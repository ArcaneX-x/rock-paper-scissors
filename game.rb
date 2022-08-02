require_relative 'who_won'

variants = ["камень", "ножницы", "бумага"]

puts "Введите вариант:"
variants.each_with_index do |variant, index|
	puts "#{index} - #{variant}"
end

user_choice = gets.to_i
computer_choice = rand(variants.size)

user_text = variants[user_choice]
puts "Вы выбрали #{user_text}"

computer_text = variants[computer_choice]
puts "Компьютер выбрал #{computer_text}"

case who_won(user_choice, computer_choice)
when 0 then puts "Ничья"
when 1 then puts "Вы победили"
when 2 then puts "Победил компьютер"
end
