def pertence_fibonacci(n)
  # Verifica se o número é negativo
  return false if n < 0

  # Inicia a sequência de Fibonacci
  a, b = 0, 1

  # Gera a sequência até encontrar o número ou passar dele
  while a <= n
    return true if a == n
    a, b = b, a + b
  end

  false
end

# Entrada do usuário
print "Informe um número: "
numero = gets.to_i

# Verificação e saída
if pertence_fibonacci(numero)
  puts "O número #{numero} pertence à sequência de Fibonacci."
else
  puts "O número #{numero} não pertence à sequência de Fibonacci."
end
