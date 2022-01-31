<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Products') }}
        </h2>
    </x-slot>

    <div class="p-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg p-4">
                <form action="{{ route('products.update', $product->id) }}" method="post">
                    @csrf
                    @method('put')
                    <label for="name" class="block mb-4">
                        Name
                        <input type="text" name="name" id="name" placeholder="Name" value="{{ $product->name }}"
                               class="block w-full bg-gray-200 border-gray-200 focus:bg-gray-100 rounded mt-2" required>
                        @if($errors->has('name'))
                            <p class="text-red-500 mt-2">{{ $errors->first('name') }}</p>
                        @endif
                    </label>
                    <label for="category" class="block mb-4">
                        Category
                        <select type="text" name="category_id" id="category"
                                class="block w-full bg-gray-200 border-gray-200 focus:bg-gray-100 rounded mt-2"
                                required>
                            <option value="" disabled selected>Category</option>
                            @foreach($categories as $category)
                                <option value="{{ $category->id }}"
                                        @if($category->id === $product->category_id) selected @endif>
                                    {{ $category->name }}
                                </option>
                            @endforeach
                        </select>
                        @if($errors->has('category'))
                            <p class="text-red-500 mt-2">{{ $errors->first('category') }}</p>
                        @endif
                    </label>
                    <label for="description" class="block mb-4">
                        Description
                        <textarea type="text" name="description" id="description" placeholder="Description"
                                  class="block w-full bg-gray-200 border-gray-200 focus:bg-gray-100 rounded mt-2"
                                  required rows="3">{{ $product->description }}</textarea>
                        @if($errors->has('description'))
                            <p class="text-red-500 mt-2">{{ $errors->first('description') }}</p>
                        @endif
                    </label>
                    <label for="price" class="block mb-4">
                        Price
                        <input type="number" name="price" id="price" placeholder="Price" value="{{ $product->price }}"
                               class="block w-full bg-gray-200 border-gray-200 focus:bg-gray-100 rounded mt-2" required
                               min="0">
                        @if($errors->has('price'))
                            <p class="text-red-500 mt-2">{{ $errors->first('price') }}</p>
                        @endif
                    </label>
                    <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"
                            type="submit">Submit
                    </button>
                </form>
            </div>
        </div>
    </div>

    <div class="pb-12 px-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg p-4 flex items-center flex-wrap">
                @foreach($product->images as $image)
                    <img src="{{ asset($image->url) }}" alt="image" class="rounded shadow w-24 h-24 object-cover mr-2">
                @endforeach
                <form action="{{ route('products.images.store',$product->id) }}" method="post"
                      enctype="multipart/form-data">
                    @csrf
                    <label for="image">
                        <span
                            class="hover:bg-blue-700 text-blue-500 hover:text-white font-bold w-24 h-24 block flex items-center justify-center text-6xl rounded cursor-pointer">+</span>
                        <input type="file" name="image" id="image" class="text-sm text-slate-500" accept="image/*"
                               required hidden onchange="this.form.submit()">
                        @if($errors->has('image'))
                            <p class="text-red-500 mt-2">{{ $errors->first('image') }}</p>
                        @endif
                    </label>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
