<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeColumnIdUnsurToIdSubUnsurInAkrPegawai extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('akr_pegawai', function (Blueprint $table) {
            $table->renameColumn('id_unsur', 'id_sub_unsur')->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('id_sub_unsur_in_akr_pegawai', function (Blueprint $table) {
            //
        });
    }
}
