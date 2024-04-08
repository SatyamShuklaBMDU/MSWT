<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Complaint;
use Illuminate\Http\Request;

class ComplaintController extends Controller
{
    public function show()
    {
        $complaint = Complaint::all();
        return view('admin.complaint.complaint',compact('complaint'));
    }
}
