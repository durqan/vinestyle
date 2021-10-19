<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class users extends Model
{
    public function profession ()
    {
        return $this->hasOne(professions::class, 'id', 'profession_id');
    }
}
