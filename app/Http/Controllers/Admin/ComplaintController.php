<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Complaint;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ComplaintController extends Controller
{
    public function show()
    {
        Session::put('page','complaint');
        $complaint = Complaint::all();
        return view('admin.complaint.complaint',compact('complaint'));
    }
}
