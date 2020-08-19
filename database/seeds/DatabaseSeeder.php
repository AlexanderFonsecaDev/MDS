<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        factory(App\User::class,30)->create();
        factory(App\User::class)->create([
            'name'                => 'Administrador',
            'email'               => 'admin@admin.com',
            'password'            => 'admin123',
            'phone'               => '3123036763',
            'type_cc'             => 'cc',
            'document'            => '1093770319',
            'address'             => 'CLL 7 AN#13E77 acacios',
            'how_did_you_find_us' => 'Un anuncio en linkedin'
        ]);
    }
}
