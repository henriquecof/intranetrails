json.extract! agente, :id, :nome, :fone, :endereco, :uf, :cidade, :tipo, :cpfcnpj, :email, :created_at, :updated_at
json.url agente_url(agente, format: :json)
