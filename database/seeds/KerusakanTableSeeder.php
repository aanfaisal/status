<?php

use Illuminate\Database\Seeder;

class KerusakanTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create('id_ID');

        $limit = 100;
        //$faker->randomElement(['seller', 'buyer']),
        
        for ($i = 0; $i < $limit; $i++) {
            DB::table('kerusakans')->insert([
              
                'pelapor' => $faker->name,
                'nm_rusak' => $faker->randomElement(['Software Error', 'Hardware Error', 'Koneksi Internet','Lain-Lain']),
                'rincian' => $faker->text,
                'keterangan' => $faker->randomElement(['Bad','Not Bad','Finish']),
                'status' => $faker->randomElement(['Antrian','Proses','Selesai']),
                //'wktu_pengukuran' => $faker->dateTimeInInterval($startDate = '-30 days', $interval = '+ 1 days', $timezone = 'Asia/Jakarta')
                'created_at' => $faker->dateTimeBetween('-30 days','-2 days'), //Asia / Jakarta
            ]);
        }
    }
}
