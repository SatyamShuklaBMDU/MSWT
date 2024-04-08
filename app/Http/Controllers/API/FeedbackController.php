<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Feedback;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class FeedbackController extends Controller
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
            $feedback = Feedback::create([
                'title' => $request->title,
                'description' => $request->description,
                'user_id' => $request->user_id,
            ]);
            if ($feedback) {
                return response()->json(['message' => 'Feedback successfully', 'data' => $feedback], 200);
            } else {
                return response()->json(['message' => 'Failed to create Feedback'], 500);
            }
        } catch (ValidationException $e) {
            return response()->json(['error' => $e->getMessage()], 422);
        }
    }
}
