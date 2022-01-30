<x-app-layout>
    <x-slot name="header">
        <div class="flex justify-between items-center">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Categories') }}
            </h2>
            <a href="{{ route('categories.create') }}"
               class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded inline-block shadow">
                New Category
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
                        <th class="py-2 px-4 text-left border-b-4 border-b-gray-100">Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    @forelse($categories as $category)
                        <tr>
                            <td class="py-2 px-4 border-t">{{ $category->name }}</td>
                            <td class="py-2 px-4 border-t">
                                <a href="{{ route('categories.edit', $category->id) }}"
                                   class="bg-blue-500 hover:bg-blue-700 text-white py-2 px-4 rounded inline-block shadow">
                                    Edit
                                </a>
                                <form action="{{ route('categories.destroy', $category->id) }}" method="post"
                                      class="inline-block ml-2">
                                    @csrf
                                    @method('delete')
                                    <button type="submit"
                                            class="bg-red-500 hover:bg-red-700 text-white py-2 px-4 rounded shadow">
                                        Delete
                                    </button>
                                </form>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="2" class="py-2 px-4 text-center">No data available.</td>
                        </tr>
                    @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</x-app-layout>
