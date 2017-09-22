<?php

namespace App\Http\Controllers\Api\V1\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OrderController extends Controller
{
    public function index(Request $request)
    {
        dd($request->all());
    }

    public function store(Request $request)
    {
        dd($request->all());
    }

    public function show($id)
    {
         dd($id);
    }
}
