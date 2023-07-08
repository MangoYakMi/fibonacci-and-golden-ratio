def calculate_fibonacci(n)
  return n if n <= 1

  previous = 0
  current = 1

  (2..n).each do
    next_number = previous + current
    previous = current
    current = next_number
  end

  current
end

def calculate_golden_ratio(n)
  return nil if n <= 1

  fibonacci_n = calculate_fibonacci(n)
  fibonacci_n_minus_1 = calculate_fibonacci(n - 1)

  golden_ratio = fibonacci_n.to_f / fibonacci_n_minus_1.to_f
  golden_ratio.round(6) # Округляем до 6 знаков после запятой
end

# Пример вычисления золотого сечения для n = 10
n = 10
result = calculate_golden_ratio(n)
puts "Золотое сечение для n = #{n}: #{result}"
