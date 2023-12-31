<?php

namespace Database\Seeders;

use App\Models\Kategori;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;


class KategoriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $kategories = ['Pemerintahan', 'Informasi', 'Teknologi'];

        foreach ($kategories as $kategori) {
            Kategori::create([
                'nama' => $kategori,
                'slug' => Str::slug($kategori)
            ]);
        }
    }
}
