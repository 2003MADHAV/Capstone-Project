<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class CheckLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {

        if(auth()->user()->status != 0 )
        {
            return $next($request);
        }else{
            if(auth()->user()->status == 0){
                return back()->with('inactive', 'Credentials not match');
            }else{
                return back()->with('inactive', 'credentials Not match');
            }

        }
        // return redirect('/');

    }
}
