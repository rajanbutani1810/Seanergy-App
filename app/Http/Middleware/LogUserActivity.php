<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class LogUserActivity
{
    public function handle(Request $request, Closure $next)
    {
        $response = $next($request);

        try {
            $userId = Auth::id();

            if ($userId) {
                $data = [
                    'user_id'    => $userId,
                    'method'     => $request->method(),
                    'url'        => $request->fullUrl(),
                    'ip_address' => $request->ip(),
                    'created_at' => now(),
                    'updated_at' => now(),
                ];

                DB::connection('mysql_db1')->table('activities')->insert($data);
                DB::connection('mysql_db2')->table('activities')->insert($data);
            }
        } catch (\Exception $e) {
            Log::error('Activity log failed', [
                'error' => $e->getMessage(),
                'url'   => $request->fullUrl(),
                'user'  => Auth::id(),
            ]);
        }

        return $response;
    }
}
