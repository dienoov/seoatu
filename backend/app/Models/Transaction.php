<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Transaction extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'user_id',
        'address',
        'total',
        'shipping',
        'status',
        'payment',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function transactionItem()
    {
        return $this->hasMany(TransactionItem::class);
    }
}
