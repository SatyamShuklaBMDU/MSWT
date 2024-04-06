<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    use HasFactory;



    
    public static function couponDetails($coupon_code) {
        $exists = Coupon::where('coupon_code', $coupon_code)->exists();
        if($exists){
        $couponDetails = Coupon::where('coupon_code', $coupon_code)->first()->toArray();
        }else{
            $couponDetails = null;
        }
        // dd($couponDetails);
        return $couponDetails;
    }
}