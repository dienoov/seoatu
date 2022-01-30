<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function all()
    {
        return response([
            'categories' => Category::all(),
        ]);
    }

    public function find(Category $category)
    {
        return response([
            'category' => $category,
        ]);
    }
}
