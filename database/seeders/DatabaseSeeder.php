<?php

namespace Database\Seeders;

use App\Models\Card;
use App\Models\Contact;
use App\Models\User;
use App\Models\Project;
use Faker\Factory as Faker;
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
        // User::factory(4)->create();
        $faker = Faker::create('id_ID');

        Contact::factory(10)->create();

        User::create([
            'nama' => 'Rasional',
            'deskripsi' => 'Rasional adalah organisasi yang bergerak pada bidang desain grafis. Disini Rasional menyediakan jasa pembuatan logo dan desain. Dengan website ini para melihat referensi yang disajikan sebagai bahan pertimbangan pembuatan logo.',
            'visi' => 'Terwujudnya kepuasan dan kepercayaan pelanggan dengan produk berkualitas.',
            'misi' => 'Membangun kerjasama tim dengan baik.Memberikan layanan jasa terbaik dengan memanfaat platform , aplikasi yang ada dengan sebaik mungkin.Menyediakan layanan konsultasi implementasi produk.',
            'alamat' => 'Kota Malang, Jawa Timur, Indonesia',
            'email' => 'rasiional1@gmail.com',
            'telp' => '085607799274',
            'instagram' => 'rasional.id',
        ]);

        User::create([
            'nama' => 'Ardiansyah Putra Wardana',
            'deskripsi' => 'Designer',
            'alamat' => 'Asrikaton, Kabupaten Malang, Jawa Timur, Indonesia',
            'email' => 'ardianputraww@gmail.com',
            'telp' => '081316491030',
            'instagram' => 'ardian.putraw',
        ]);

        User::create([
            'nama' => 'Moch Rangga Agastya Ariyanto',
            'deskripsi' => 'Developer',
            'alamat' => 'Karangploso, Kabupaten Malang, Jawa Timur, Indonesia',
            'email' => 'rangga.agastya711@gmail.com',
            'telp' => '085156385545',
            'instagram' => 'agastyra',
        ]);

        User::create([
            'nama' => 'Salma Rahmalia',
            'deskripsi' => 'Manager',
            'alamat' => 'Singosari, Kabupaten Malang, Jawa Timur, Indonesia',
            'email' => 'salmarahmalia59@gmail.com',
            'telp' => '085641808472',
            'instagram' => '_rahmaliasalma',
        ]);

        Card::create([
            'judul' => 'Desain Logo',
            'body' => 'Melayani jasa pembuatan logo sesuai dengan permintaan pelanggan, dengan melampirkan format yang disediakan.',
            'gambar' => 'TelegramLogo.svg'
        ]);

        Card::create([
            'judul' => 'Desain Kaos',
            'body' => 'Melayani jasa pembuatan desain kaos sesuai dengan permintaan pelanggan, dengan melampirkan format yang disediakan.',
            'gambar' => 'TShirt.svg'
        ]);

        Card::create([
            'judul' => 'Desain Produk',
            'body' => 'Melayani jasa pembuatan desain produk sesuai dengan permintaan pelanggan, dengan melampirkan format yang disediakan.',
            'gambar' => 'Browsers.svg'
        ]);

        Card::create([
            'judul' => 'Komunikatif',
            'body' => 'Menyampaikan informasi atau mendapat informasi dan yang paling utama untuk menghasilkan produk terbaik.',
            'gambar' => 'ChatsCircle.svg'
        ]);

        Card::create([
            'judul' => 'Kolaboratif',
            'body' => 'Kemampuan (kinerja) bekerja sama dalam kelompok(tim) untuk menuju tujuan bersama',
            'gambar' => 'Puzzle.svg'
        ]);

        Card::create([
            'judul' => 'Terpercaya',
            'body' => 'Dengan menerapkan nilai komunikatif dan kolaboratif tersebut akan dicapai hasil maksimal untuk produk yang dihasilkan demi kepuasan pelanggan.',
            'gambar' => 'Handshake.svg'
        ]);

        Project::create([
            'judul' => 'Lovy Ice Cream',
            'slug' => 'lovy-ice-cream',
            'note' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?',
            'deskripsi' => '<p>' .  implode('</p><p>', $faker->paragraphs(mt_rand(5, 10))) . '</p>',
            'gambar' => 'mockup-1.jpg'
        ]);

        Project::create([
            'judul' => 'Boba Ker',
            'slug' => 'boba-ker',
            'note' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?',
            'deskripsi' => '<p>' .  implode('</p><p>', $faker->paragraphs(mt_rand(5, 10))) . '</p>',
            'gambar' => 'Boba Ker.jpeg'
        ]);

        Project::create([
            'judul' => 'Burger Ker',
            'slug' => 'burger-ker',
            'note' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?',
            'deskripsi' => '<p>' .  implode('</p><p>', $faker->paragraphs(mt_rand(5, 10))) . '</p>',
            'gambar' => 'Burger Ker.jpeg'
        ]);

        Project::create([
            'judul' => 'Coffee Star Gold',
            'slug' => 'coffee-star-gold',
            'note' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?',
            'deskripsi' => '<p>' .  implode('</p><p>', $faker->paragraphs(mt_rand(5, 10))) . '</p>',
            'gambar' => 'Coffee Star Gold.jpeg'
        ]);

        Project::create([
            'judul' => 'Jas Juice',
            'slug' => 'jas-juice',
            'note' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?',
            'deskripsi' => '<p>' .  implode('</p><p>', $faker->paragraphs(mt_rand(5, 10))) . '</p>',
            'gambar' => 'Jas Juice.jpeg'
        ]);

        Project::create([
            'judul' => 'The Wolves Company',
            'slug' => 'the-wolves-company',
            'note' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?',
            'deskripsi' => '<p>' .  implode('</p><p>', $faker->paragraphs(mt_rand(5, 10))) . '</p>',
            'gambar' => 'wolves.jpg'
        ]);
    }
}
