# Função para inverter a string
def inverter_string(str)
  string_invertida = ''
  
  # Percorre a string de trás para frente
  (str.length - 1).downto(0) do |i|
    string_invertida += str[i]
  end

  string_invertida
end

# Exemplo de uso
puts "Digite uma string para ser invertida:"
entrada = gets.chomp

# Chama a função para inverter a string e exibe o resultado
resultado = inverter_string(entrada)
puts "String invertida: #{resultado}"
