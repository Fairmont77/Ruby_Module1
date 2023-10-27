def calculate_f(a, b, c, x)
  if x < 5 && c != 0
    return -a * x**2 - b
  elsif x > 5 && c == 0
    return (x - a) / x
  else
    return -x / c
  end
end

puts "Введіть значення a:"
a = gets.chomp.to_f

puts "Введіть значення b:"
b = gets.chomp.to_f

puts "Введіть значення c:"
c = gets.chomp.to_f

puts "Введіть значення Xпочаткове:"
x_start = gets.chomp.to_i

puts "Введіть значення Xкінцеве:"
x_end = gets.chomp.to_i

puts "Введіть значення dX:"
dx = gets.chomp.to_i

puts "X\t|\tF"
puts "---------------------"

current_x = x_start
while current_x <= x_end
  f_value = calculate_f(a, b, c, current_x)
  puts "#{current_x}\t|\t#{f_value}"
  current_x += dx
end
