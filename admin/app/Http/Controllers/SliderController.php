<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    private $slider;

    public function __construct(Slider $slider)
    {
        $this->slider = $slider;
    }

    public function create()
    {
        $Dataslider = $this->slider->all();
        return view('slider.add', compact('Dataslider'));
    }

    public function index()
    {
        $Dataslider = $this->slider->latest()->paginate(3);
        return view('slider.index', compact('Dataslider'));
    }

    public function store(Request $request)
    {
        $this->slider->create([
            'Image' => $request->Image
        ]);
        return redirect()->route('slider.index');
    }
    
    public function delete($id)
    {
        $this->slider->find($id)->delete();
        return redirect()->route('slider.index');
    }
}
