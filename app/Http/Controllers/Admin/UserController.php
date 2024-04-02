<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{
    public function users()
    {
        Session::put('page', 'users');
        $users = User::get()->toArray();
        return view('admin.users.users')->with(compact('users'));
    }

    public function filterUser(Request $request)
    {
        $request->validate([
            'start' => 'required|date',
            'end' => 'required|date|after_or_equal:start',
        ]);
        Session::put('page', 'users');
        $start = $request->start;
        $end = $request->end;
        $users = User::whereBetween('created_at', [$request->start, $request->end])->get();
        return view('admin.users.users')->with(compact('users', 'start', 'end'));
    }

    public function updateUserStatus(Request $request)
    {
        if ($request->ajax()) {
            $data = $request->all();
            if ($data['status'] == 'Active') { // $data['status'] comes from the 'data' object inside the $.ajax() method    // reverse the 'status' from (ative/inactive) 0 to 1 and 1 to 0 (and vice versa)
                $status = 0;
            } else {
                $status = 1;
            }
            User::where('id', $data['user_id'])->update(['status' => $status]); // $data['user_id'] comes from the 'data' object inside the $.ajax() method
            return response()->json([ // JSON Responses: https://laravel.com/docs/9.x/responses#json-responses
                'status' => $status,
                'user_id' => $data['user_id'],
            ]);
        }
    }

    public function changeStatuss(Request $request)
    {
        $userId = $request->input('userId');
        $status = $request->input('status');

        // Update the status of the user in the database
        $user = User::find($userId);
        if ($user) {
            $user->status = $status;
            $user->save();

            return response()->json(['success' => true, 'message' => 'Status updated successfully']);
        } else {
            return response()->json(['success' => false, 'message' => 'User not found']);
        }
    }

}
