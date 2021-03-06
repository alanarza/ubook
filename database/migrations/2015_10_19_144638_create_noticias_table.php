<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNoticiasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Noticias', function(Blueprint $table)
        {
           $table->increments('id');
           $table->string('titulo');
           $table->string('contenido');
           $table->integer('autor');
           $table->string('imagen');
           $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Noticias');
    }
}
