<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Feedback;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class FeedbackController extends Controller
{
    public function store(Request $request)
    {
        try {
            $validatedData = $request->validate([
                'title' => 'required|string|max:255',
                'description' => 'required|string',
                'user_id' => 'required|exists:users,id',
            ], [
                'title.required' => 'The title field is required.',
                'description.required' => 'The description field is required.',
                'user_id.required' => 'The user_id field is required.',
            ]);
        } catch (ValidationException $e) {
            return response()->json(['error' => $e->getMessage()], 422);
        }
        $feedback = Feedback::create($validatedData);
        if ($feedback) {
            return response()->json(['message' => 'Feedback successfully', 'data' => $feedback], 200);
            
        } else {
            return response()->json(['message' => 'Failed to create Feedback'], 500);
        }
    }
}
