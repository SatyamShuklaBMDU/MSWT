<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Referral;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class ReferralController extends Controller
{

        public function store($ref,$to)
        {
        
        try {
            // $validatedData = Validator::make($request->all(),[
            //     'from_user_id' => 'required|exists:users,id',
            //     'to_user_id' => 'required|exists:users,id',
            // ]);
            // if ($validatedData->fails()) {
            //     return response()->json(['error' => $validatedData->errors()], 422);
            // }
            $referral = referral::create([
                'from_user_id' => $ref,
                'to_user_id' => $to
            ]);
            if ($referral) {
                // return response()->json(['message' => 'referral successfully', 'data' => $referral], 200);
                return back();
            } else {
                return response()->json(['message' => 'Failed to create referral'], 500);
            }
        } catch (ValidationException $e) {
            return response()->json(['error' => $e->getMessage()], 422);
        }
    }
}
