<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Categories') }}
        </h2>
    </x-slot>

    <div class="p-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg p-4">
                <form action="{{ route('categories.store') }}" method="post">
                    @csrf
                    <label for="name" class="block mb-4">
                        Name
                        <input type="text" name="name" id="name" placeholder="Name"
                               class="block w-full bg-gray-200 border-gray-200 focus:bg-gray-100 rounded mt-2" required>
                        @if($errors->has('name'))
                            <p class="text-red-500 mt-2">{{ $errors->first('name') }}</p>
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
