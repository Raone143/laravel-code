<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Category extends Model
{
    public $table = 'categoryname';
    protected $fillable = ['categoryname','position'];
}