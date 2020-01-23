5.times do
    Setor.create!(   
        unidade: Faker::Company.name,
        empresa: Faker::Company.sufix,
        setor: Faker::Name.name
    )
end