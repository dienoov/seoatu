<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductImageRequest;
use App\Models\ProductImage;

class ProductImageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \App\Http\Requests\ProductImageRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductImageRequest $request, $productId)
    {
        $input['product_id'] = $productId;
        $input['url'] = $request->image->store('media/products');

        ProductImage::create($input);

        return redirect()->route('products.edit', $productId);
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\ProductImage $productImage
     * @return \Illuminate\Http\Response
     */
    public function show(ProductImage $productImage)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\ProductImage $productImage
     * @return \Illuminate\Http\Response
     */
    public function edit(ProductImage $productImage)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \App\Http\Requests\ProductImageRequest $request
     * @param \App\Models\ProductImage $productImage
     * @return \Illuminate\Http\Response
     */
    public function update(ProductImageRequest $request, ProductImage $productImage)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\ProductImage $productImage
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProductImage $productImage)
    {
        $productImage->delete();

        return redirect()->back();
    }
}
