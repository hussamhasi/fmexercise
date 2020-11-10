<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    protected $fillable = [
        'map_location',
        'image',
        'name',
        'address',
        'website',
        'email',
        'is_private',
        'type',
        'description'
    ];
}
