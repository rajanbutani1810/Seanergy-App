<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
    protected $connection = 'mysql_db1';
    protected $fillable = [
       'method', 'url'
    ];

}    