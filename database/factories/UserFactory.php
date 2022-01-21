<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [

            //     $table->id();
            //     $table->string('judul', 255);
            //     $table->text('deskripsi');
            //     $table->string('alamat', 255);
            //     $table->date('tanggal_buat')->default(now());
            //     $table->string('instagram', 50);
            //     $table->string('twitter', 50);
            //     $table->timestamps();

            'judul' => $this->faker->sentence(4),
            'deskripsi' => '<p>' . implode('</p><p>', $this->faker->paragraphs(3)) . '</p>',
            'alamat' => $this->faker->address(),
            'email' => $this->faker->unique()->companyEmail(),
            'telp' => $this->faker->unique()->e164PhoneNumber(),
            'instagram' => $this->faker->unique()->userName(),
            'twitter' => $this->faker->unique()->userName()
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
