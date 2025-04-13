<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    protected $connection = 'mysql_db2';
    protected $fillable = ['title', 'description', 'status', 'user_id', 'project_id'];
}    
