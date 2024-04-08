<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Complaint;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class ComplaintController extends Controller
{
    public function store(Request $request)
    {
        try {
            $validatedData = Validator::make($request->all(),[
                'title' => 'required|string|max:255',
                'description' => 'required|string',
                'user_id' => 'required|exists:users,id',
            ]);
            if ($validatedData->fails()) {
                return response()->json(['error' => $validatedData->errors()], 422);
            }         
            $complaint = Complaint::create([
                'title'=>$request->title,
                'description'=>$request->description,
                'user_id'=>$request->user_id,
            ]);
            if ($complaint) {
                return response()->json(['message' => 'Complaint created successfully', 'data' => $complaint], 200);
            } else {
                return response()->json(['message' => 'Failed to create complaint'], 500);
            }
        } catch (ValidationException $e) {
            return response()->json(['error' => $e->getMessage()], 422);
        }
    }
}
