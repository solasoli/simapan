<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTipeKkiKodeTemuan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('adt_audit_kertas_kerja_ikhtisar_kode_temuan', function (Blueprint $table) {
            $table->string('tipe')->nullable()->after('level');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('adt_audit_kertas_kerja_ikhtisar_kode_temuan', function (Blueprint $table) {
            //
        });
    }
}
