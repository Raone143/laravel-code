<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $fillable = ['product_name','product_desc','book_price','product_image1'];
}
