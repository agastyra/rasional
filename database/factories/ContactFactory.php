<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ContactFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nama' => $this->faker->company(),
            'email' => $this->faker->companyEmail(),
            'layanan' => $this->faker->sentence(1),
            'pesan' => $this->faker->paragraph(3)
        ];
    }
}
