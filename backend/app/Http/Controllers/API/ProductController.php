<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function all()
    {
        return response([
            'products' => Product::all(),
        ]);
    }

    public function find(Product $product)
    {
        return response([
            'product' => $product,
        ]);
    }
}
