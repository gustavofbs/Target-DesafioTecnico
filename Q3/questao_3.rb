require 'json'

# Função para carregar os dados do JSON
def carregar_dados_faturamento(arquivo)
  file = File.read(arquivo)
  JSON.parse(file)  # Remove a referência à chave 'faturamento'
end

# Função para calcular o menor e maior faturamento, e dias acima da média
def calcular_faturamento(faturamento)
  # Filtrar os dias com faturamento (ignorar dias com valor 0)
  dias_com_faturamento = faturamento.select { |dia| dia['valor'] > 0 }

  # Menor e maior valor de faturamento
  menor_valor = dias_com_faturamento.min_by { |dia| dia['valor'] }['valor']
  maior_valor = dias_com_faturamento.max_by { |dia| dia['valor'] }['valor']

  # Calcular a média de faturamento
  total_faturamento = dias_com_faturamento.sum { |dia| dia['valor'] }
  media_faturamento = total_faturamento / dias_com_faturamento.size

  # Contar os dias com faturamento superior à média
  dias_acima_media = dias_com_faturamento.count { |dia| dia['valor'] > media_faturamento }

  return menor_valor, maior_valor, media_faturamento, dias_acima_media
end

# Caminho para o arquivo JSON com os dados de faturamento
arquivo_faturamento = 'dados.json'

# Carregar os dados do faturamento
faturamento = carregar_dados_faturamento(arquivo_faturamento)

# Calcular resultados
menor_valor, maior_valor, media_faturamento, dias_acima_media = calcular_faturamento(faturamento)

# Exibir os resultados
puts "Menor valor de faturamento: #{menor_valor}"
puts "Maior valor de faturamento: #{maior_valor}"
puts "Média de faturamento: #{media_faturamento}"
puts "Número de dias com faturamento superior à média: #{dias_acima_media}"
