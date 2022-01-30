<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Transaction;
use App\Models\TransactionItem;
use Illuminate\Http\Request;

class TransactionController extends Controller
{
    public function all(Request $request)
    {
        return response([
            'transactions' => $request->user()->transactions(),
        ]);
    }

    public function find(Transaction $transaction, Request $request)
    {
        if ($transaction->user_id !== $request->user()->id)
            return response([
                'message' => 'Not found',
            ], 404);

        return response([
            'transaction' => $transaction,
        ]);
    }

    public function create(Request $request)
    {
        $request->validate([
            'address' => ['required', 'string'],
            'items' => ['required', 'array'],
            'items.*.id' => ['required', 'exists:products,id'],
            'items.*.quantity' => ['required', 'numeric', 'min:1'],
        ]);

        $input = \request(['address']);
        $input['user_id'] = $request->user()->id;
        $input['shipping'] = 30000;
        $input['price'] = 0;

        $items = [];

        foreach ($request->items as $item) {
            $product = Product::find($item['id']);
            $price += $product->price * $item['quantity'];

            $items[] = [
                'product_id' => $item['id'],
                'quantity' => $item['quantity'],
            ];
        }

        $transaction = Transaction::create($input);

        foreach ($items as $item)
            $item['transaction_id'] = $transaction->id;

        TransactionItem::insert($items);

        return response([
            'transaction' => $transaction,
        ]);
    }
}
