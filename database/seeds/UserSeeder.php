<?php

use App\Role;
use App\User;
use App\Permission;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    public function run()
    {
        // Membuat role admin
        $adminRole = new Role();
        $adminRole->name = "admin";
        $adminRole->display_name = "admin";
        $adminRole->save();

        // Membuat role member
        $memberRole = new Role();
        $memberRole->name = "karyawan";
        $memberRole->display_name = "Karyawan";
        $memberRole->save();

        // Membuat role member
        $member1Role = new Role();
        $member1Role->name = "manajer";
        $member1Role->display_name = "Manajer";
        $member1Role->save();

        // Membuat sample admin
        $admin = new User();
        $admin->name = 'admin';
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
        $member->name = "karyawan";
        $member->username = "karyawan";
        $member->email = 'karyawan@gmail.com';
        $member->password = bcrypt('rahasia');
        $member->gender = "male";
        $member->address = "Jalan Kedungpane Raya 2 No.43 Semarang";
        $member->status = "aktif";
        $member->save();
        $member->attachRole($memberRole);

        // Membuat sample member
        $member1 = new User();
        $member1->name = "manajer";
        $member1->username = "manajer";
        $member1->email = 'manajer@gmail.com';
        $member1->password = bcrypt('rahasia');
        $member1->gender = "male";
        $member1->address = "Jalan Kedungpane Raya 2 No.43 Semarang";
        $member1->status = "aktif";
        $member1->save();
        $member1->attachRole($member1Role);

        $addkerusakan = new Permission();
        $addkerusakan->name         = 'add-kerusakan';
        $addkerusakan->display_name = 'Add Kerusakan'; // optional
        // Allow a user to...
        $addkerusakan->description  = 'Add kerusakan'; // optional
        $addkerusakan->save();

        $listkerusakan = new Permission();
        $listkerusakan->name         = 'list-kerusakan';
        $listkerusakan->display_name = 'List Kerusakan'; // optional
        // Allow a user to...
        $listkerusakan->description  = 'List kerusakan'; // optional
        $listkerusakan->save();

        $showkerusakan = new Permission();
        $showkerusakan->name         = 'show-kerusakan';
        $showkerusakan->display_name = 'Show Kerusakan'; // optional
        // Allow a user to...
        $showkerusakan->description  = 'Show kerusakan'; // optional
        $showkerusakan->save();

        $updatekerusakan = new Permission();
        $updatekerusakan->name         = 'update-kerusakan';
        $updatekerusakan->display_name = 'Update Kerusakan'; // optional
        // Allow a user to...
        $updatekerusakan->description  = 'Update kerusakan'; // optional
        $updatekerusakan->save();


        $member->attachPermission($addkerusakan);
        $admin->attachPermission($addkerusakan);
        $member1->attachPermission($addkerusakan);

        $admin->attachPermission($listkerusakan);
        $member1->attachPermission($listkerusakan);

        $admin->attachPermission($showkerusakan);
        $member1->attachPermission($showkerusakan);

        $admin->attachPermission($updatekerusakan);
        $member1->attachPermission($updatekerusakan);

    }
}
