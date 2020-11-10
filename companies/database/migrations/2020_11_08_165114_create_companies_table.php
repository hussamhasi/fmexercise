<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompaniesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        /*
        map_location,
        image,
        name
        address
        website
        email
        is_private
        type
        description
        and other required details. (Form must include textbox, select, radio button, checkboxes and email).
        */
        Schema::create('companies', function (Blueprint $table) {
            $table->id();
            $table->text('map_location');
            $table->text('image');
            $table->text('description');
            $table->string('name');
            $table->string('address');
            $table->string('website');
            $table->string('type');
            $table->string('email');
            $table->tinyInteger('is_private');
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
        Schema::dropIfExists('companies');
    }
}
