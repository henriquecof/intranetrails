class Contacorrente < ApplicationRecord
    enum tipo: { Bancária: 0 , Caixa: 1 }
    enum banco: {
        "Banco do Brasil"=>  001,
        "Caixa Econômica" => 104,
        "Banco Santander" => 033,
        "Banco Itaú" => 341
    
    
    }

    belongs_to :agente
end
