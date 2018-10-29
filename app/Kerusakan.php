<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kerusakan extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'kerusakans';

    /**
    * The database primary key value.
    *
    * @var string
    */
    protected $primaryKey = 'rusak_id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['pelapor', 'nm_rusak'];

    
}
