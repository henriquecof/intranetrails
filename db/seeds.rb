require 'faker'

200.times do
  unidade_setor = Faker::Nane.name
    empresa_setor = Faker::Name.first_name
    setor_setor = Faker::Name.last_name
    id_setor = rand(1..50)
    Setor.create(id: id_setor,
        unidade: unidade_setor,
        empresa: empresa_setor,
        setor: setor_setor
    )


end