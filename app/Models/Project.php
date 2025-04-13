<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    protected $connection = 'mysql_db2';
    protected $fillable = ['title', 'description', 'status', 'user_id'];

    public function tasks()
    {
        return $this->hasMany(Task::class);
    }

}    