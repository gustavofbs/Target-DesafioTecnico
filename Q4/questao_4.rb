# Dados de faturamento por estado
faturamento_estados = {
  "SP" => 67836.43,
  "RJ" => 36678.66,
  "MG" => 29229.88,
  "ES" => 27165.48,
  "Outros" => 19849.53
}

# Função para calcular o percentual de cada estado
def calcular_percentual(faturamento_estados)
  # Calcula o faturamento total
  faturamento_total = faturamento_estados.values.sum

  # Calcula o percentual de cada estado
  faturamento_estados.each do |estado, valor|
    percentual = (valor / faturamento_total) * 100
    puts "#{estado}: #{'%.2f' % percentual}%"
  end
end

# Chama a função para calcular e exibir os percentuais
calcular_percentual(faturamento_estados)
