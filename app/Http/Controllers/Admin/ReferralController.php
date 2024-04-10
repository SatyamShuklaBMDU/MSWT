<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Referral;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ReferralController extends Controller
{
    public function show()
    {
         
        Session::put('page','referrals');
        $referrals = Referral::all();
        // dd($referrals);

        return view('admin.referrals.referral',compact('referrals'));
    }
}
