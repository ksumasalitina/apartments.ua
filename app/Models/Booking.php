<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'firstName',
        'lastName',
        'apartment_id',
        'apartment_name',
        'room_id',
        'arrival',
        'departure',
        'total',
        'people'
    ];
}
