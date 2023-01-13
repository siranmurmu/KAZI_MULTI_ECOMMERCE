<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
        		//Admin
        	[
        		'name' => 'Admin',
        		'username' => 'admin',
        		'email' => 'admin@gamil.com',
        		'password' => Hash::make('12345678'),
        		'role' => 'admin',
        		'status' => 'active',
        	],

        		//Vendor
        	[
        		'name' => 'Murmu Vendor',
        		'username' => 'vendor',
        		'email' => 'vendor@gamil.com',
        		'password' => Hash::make('12345678'),
        		'role' => 'vendor',
        		'status' => 'active',
        	],

        		//User Or Customer
        	[
        		'name' => 'user',
        		'username' => 'user',
        		'email' => 'user@gamil.com',
        		'password' => Hash::make('12345678'),
        		'role' => 'user',
        		'status' => 'active',
        	],
        ]);
    }
}
