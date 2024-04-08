<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckPermission
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next, ...$permissions)
    {
        // dd('1');
        $user = $request->user(); // Assuming you are using authentication
        if (!$user) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }
        $userPermissions = json_decode($user->permissions, true);
        if (in_array("all", $userPermissions)) {
            return $next($request);
        }
        foreach ($permissions as $permission) {
            if (!in_array($permission, $userPermissions)) {
                return response()->json(['error' => 'Forbidden'], 403);
            }
        }
        return $next($request);
    }
}
