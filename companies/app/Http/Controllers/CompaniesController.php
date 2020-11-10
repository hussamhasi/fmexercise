<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
class CompaniesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Company::all();
    }

    public function search(Request $request)
    {
        if(!isset($request->name)) return [];
        
        return Company::where('name', 'LIKE', '%' . $request->name . '%')->get();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $image = $request->file('image');
        $extension = $image->getClientOriginalExtension();
        Storage::disk('public')->put($image->getFilename().'.'.$extension,  File::get($image));
        
        $data = $request->all();
        $data['image'] = $image->getFilename().'.'.$extension;
        Company::create($data);
        return $request->all();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function show(Company $company)
    {
        return $company;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function edit(Company $company)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Company $company)
    {
        $image = $request->file('image');
        $data = $request->all();
        if(!!$image){

            $extension = $image->getClientOriginalExtension();
            Storage::disk('public')->put($image->getFilename().'.'.$extension,  File::get($image));
            
            $data['image'] = $image->getFilename().'.'.$extension;
        }
        
        $company->update($data);
        return $company;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function destroy(Company $company)
    {
        //
    }
}
