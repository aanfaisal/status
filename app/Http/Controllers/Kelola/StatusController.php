<?php

namespace App\Http\Controllers\Kelola;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Auth;
use App\Permission;
use App\Kerusakan;
use App\User;
use Illuminate\Http\Request;

class StatusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        $data = 'https://server-status-tsp.firebaseapp.com/status';
       
        $status = json_decode(file_get_contents($data), true);
        
        
        return view('admin.status', compact('status'));
        
    }

}
