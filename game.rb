require_relative 'who_won'

variants = %w[камень ножницы бумага]
win_conditions = %w[12 23 31]

puts 'Введите вариант:'
variants.each_with_index do |variant, index|
  puts "#{(index +1)} - #{variant}"
end

user_choice = gets.to_i
computer_choice = rand(1..variants.size)

user_text = variants[(user_choice -1)]
puts "Вы выбрали: #{user_text}"

computer_text = variants[(computer_choice -1)]
puts "Компьютер выбрал: #{computer_text}"

case who_won(user_choice, computer_choice, win_conditions)
when 0 then puts 'Ничья'
when 1 then puts 'Вы победили'
when 2 then puts 'Победил компьютер'
end
