require 'ffaker'

10.times do 
    Setor.create(
        empresa: Faker::first_name,
        unidade: Faker::last_name,
         )
end