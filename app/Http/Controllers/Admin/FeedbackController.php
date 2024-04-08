<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Feedback;
use Illuminate\Http\Request;

class FeedbackController extends Controller
{
    public function show()
    {
        $feedback = Feedback::all();
        return view('admin.feedback.feedback',compact('feedback'));
    }
}
