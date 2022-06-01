Before do
    puts 'Estou executando antes de cada cenário'
end

After do |scenario|
    puts 'Estou executando depois'
    puts scenario.failed?
end

After('@limpar_banco') do
    puts 'EXECUTANDO DEPOIS DO CENÁRIO Carregar página do Google CENÁRIO 2'
end