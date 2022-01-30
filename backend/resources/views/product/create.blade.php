<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Products') }}
        </h2>
    </x-slot>

    <div class="pt-6 pb-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg p-4">
                <form action="{{ route('products.store') }}" method="post">
                    @csrf
                    <label for="name" class="block mb-4">
                        Name
                        <input type="text" name="name" id="name" placeholder="Name"
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
                                <option value="{{ $category->id }}">{{ $category->name }}</option>
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
                                  required rows="3"></textarea>
                        @if($errors->has('description'))
                            <p class="text-red-500 mt-2">{{ $errors->first('description') }}</p>
                        @endif
                    </label>
                    <label for="price" class="block mb-4">
                        Price
                        <input type="number" name="price" id="price" placeholder="Price"
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
</x-app-layout>
