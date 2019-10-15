def divide(a, b)
  begin
    a/b
  rescue ZeroDivisionError => error
    puts "На ноль делить нельзя (#{error.message})"
  end
end

def calculate (znak, a, b) 
  divide(a, b) if znak == "/"  
end

puts "Первое число: "
a = STDIN.gets.to_i
puts "Второе число: "
b = STDIN.gets.to_i

znak = ""

until ["/"].include?(znak)
  puts " Выберите операцию ( / ): "
  znak = STDIN.gets[0]
end

puts "Результат: "
puts calculate(znak, a, b)
