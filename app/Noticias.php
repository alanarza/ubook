<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Noticias extends Model
{

    public function autorObj ()
    {
    	return $this->belongsTo('App\User', 'autor');
    }
}
