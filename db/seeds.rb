10.times do |n|
    #id = rand (1..10)
    unidade = Faker::Name.name
    empresa = Faker::Educator.campus
    setor = Faker::Educator.university
    Setor.create(
        #id: id,
        unidade: unidade,
        empresa: empresa,
        setor: setor
    )

end

