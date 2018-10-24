<?php

use App\Role;
use App\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    public function run()
    {
        // Membuat role admin
        $adminRole = new Role();
        $adminRole->name = "adminmanager";
        $adminRole->display_name = "AdminManajer";
        $adminRole->save();

        // Membuat role member
        $memberRole = new Role();
        $memberRole->name = "karyawan";
        $memberRole->display_name = "Karyawan";
        $memberRole->save();

        // Membuat sample admin
        $admin = new User();
        $admin->name = 'Adminmanager';
        $admin->email = 'admin@gmail.com';
        $admin->password = bcrypt('rahasia');
        $admin->status = "aktif";
        $admin->username = "admin";
        $admin->gender = "male";
        $admin->address = "Jalan Ngaliyan Raya No.43 Semarang";
        $admin->save();
        $admin->attachRole($adminRole);

        // Membuat sample member
        $member = new User();
        $member->name = "Karyawan";
        $member->username = "karyawan";
        $member->email = 'karyawan@gmail.com';
        $member->password = bcrypt('rahasia');
        $member->gender = "male";
        $member->address = "Jalan Kedungpane Raya 2 No.43 Semarang";
        $member->status = "aktif";
        $member->save();
        $member->attachRole($memberRole);
    }
}
