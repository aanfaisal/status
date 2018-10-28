<?php

namespace App\Http\Controllers\Kelola;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Auth;
use App\Permission;
use App\Kerusakan;
use App\User;
use Illuminate\Http\Request;

class KerusakanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
       
        $keyword = $request->get('search');
        $perPage = 25;

        if (!empty($keyword)) {
            $kerusakan = Kerusakan::where('pelapor', 'LIKE', "%$keyword%")
                ->orWhere('nm_rusak', 'LIKE', "%$keyword%")
                ->orWhere('rincian', 'LIKE', "%$keyword%")
                ->orWhere('status', 'LIKE', "%$keyword%")
                ->latest()->paginate($perPage);
        } else {
            $kerusakan = Kerusakan::latest()->paginate($perPage);
        }

        if (Auth::user()->hasRole(['admin','manajer'])) {
            return view('admin.kerusakan.index', compact('kerusakan'));
        } else {
            return redirect('kelola/kerusakan/create');
            // abort(503);
        }
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('admin.kerusakan.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        
        $requestData = $request->all();
        
        Kerusakan::create($requestData);

        if (Auth::user()->hasRole(['karyawan'])) {
            return redirect('kelola/kerusakan/create')->with('flash_message', 'Data Kerusakan Ditambahkan');
        } else {
            return redirect('kelola/kerusakan')->with('flash_message', 'Data Kerusakan Ditambahkan');
            // abort(503);
        }
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        $kerusakan = Kerusakan::findOrFail($id);

        if (Auth::user()->hasRole(['manajer', 'admin'])) {
            return view('admin.kerusakan.show', compact('kerusakan'));
        } else {
            return redirect('kelola/kerusakan/create');
            // abort(503);
        }
        //return view('admin.kerusakan.show', compact('kerusakan'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        $kerusakan = Kerusakan::findOrFail($id);
        
        if (Auth::user()->hasRole(['manajer', 'admin'])) {
            return view('admin.kerusakan.edit', compact('kerusakan'));
        } else {
            return redirect('kelola/kerusakan/create');
            // abort(503);
        }
       // return view('admin.kerusakan.edit', compact('kerusakan'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request, $id)
    {
        
        $requestData = $request->all();
        
        $kerusakan = Kerusakan::findOrFail($id);
        $kerusakan->update($requestData);
        
        if (Auth::user()->hasRole(['karyawan'])) {
            return redirect('kelola/kerusakan/create')->with('flash_message', 'Data Kerusakan Telah Di Update');
        } else {
            return redirect('kelola/kerusakan')->with('flash_message', 'Data Kerusakan Telah Di Update');
            // abort(503);
        }
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        Kerusakan::destroy($id);

        return redirect('kelola/kerusakan')->with('flash_message', 'Data Kerusakan Dihapus');
    }
}
