<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Feedback;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class FeedbackController extends Controller
{
    public function show()
    {
        Session::put('page','feedback');
        $feedback = Feedback::all();
        return view('admin.feedback.feedback',compact('feedback'));
    }
}
