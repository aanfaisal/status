<?php

namespace App\Http\Controllers\Kelola;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Kerusakan;
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

        return view('admin.kerusakan.index', compact('kerusakan'));
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

        return redirect('kelola/kerusakan')->with('flash_message', 'Kerusakan added!');
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

        return view('admin.kerusakan.show', compact('kerusakan'));
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

        return view('admin.kerusakan.edit', compact('kerusakan'));
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

        return redirect('kelola/kerusakan')->with('flash_message', 'Kerusakan updated!');
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

        return redirect('kelola/kerusakan')->with('flash_message', 'Kerusakan deleted!');
    }
}
