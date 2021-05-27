<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddIsPrimerAndIsSekuderInAkrPegawai extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('akr_pegawai', function (Blueprint $table) {
            $table->boolean('is_primer')->default(0);
            $table->boolean('is_sekunder')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('akr_pegawai', function (Blueprint $table) {
            //
        });
    }
}
