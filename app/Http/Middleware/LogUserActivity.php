<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class LogUserActivity
{
    public function handle(Request $request, Closure $next)
    {
        $response = $next($request);

        try {
            // Use DB connection for DB1
            DB::connection('mysql_db1')->table('activities')->insert([
                'user_id' => Auth::id(),
                'method' => $request->method(),
                'url' => $request->fullUrl(),
                'ip_address' => $request->ip(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        } catch (\Exception $e) {
            // Log to storage/logs if DB insert fails
            \Log::error('Activity log failed: ' . $e->getMessage());
        }

        return $response;
    }
}
