<x-app-layout>
    <x-slot name="header">
        <div class="flex justify-between items-center">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Products') }}
            </h2>
            <a href="{{ route('products.create') }}"
               class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded inline-block shadow">
                New Product
            </a>
        </div>
    </x-slot>

    <div class="p-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <table class="table-auto w-full">
                    <thead>
                    <tr>
                        <th class="py-2 px-4 text-left border-b-4 border-b-gray-100">Name</th>
                        <th class="py-2 px-4 text-left border-b-4 border-b-gray-100">Category</th>
                        <th class="py-2 px-4 text-left border-b-4 border-b-gray-100">Description</th>
                        <th class="py-2 px-4 text-left border-b-4 border-b-gray-100">Price</th>
                        <th class="py-2 px-4 text-left border-b-4 border-b-gray-100">Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    @forelse($products as $product)
                        <tr>
                            <td class="py-2 px-4 border-t">{{ $product->name }}</td>
                            <td class="py-2 px-4 border-t">{{ $product->category->name }}</td>
                            <td class="py-2 px-4 border-t">{{ $product->description }}</td>
                            <td class="py-2 px-4 border-t">{{ $product->price }}</td>
                            <td class="py-2 px-4 border-t">
                                <a href="{{ route('products.edit', $product->id) }}"
                                   class="bg-blue-500 hover:bg-blue-700 text-white py-2 px-4 rounded inline-block shadow">
                                    Edit
                                </a>
                                <form action="{{ route('products.destroy', $product->id) }}" method="post"
                                      class="inline-block ml-2">
                                    @csrf
                                    @method('delete')
                                    <button type="submit"
                                            class="bg-red-500 hover:bg-red-700 text-white py-2 px-4 rounded shadow">Delete
                                    </button>
                                </form>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="5" class="py-2 px-4 text-center">No data available.</td>
                        </tr>
                    @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</x-app-layout>
