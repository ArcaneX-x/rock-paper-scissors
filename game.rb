	objects = [
	"Камень",
	"Ножницы",
	"Бумага"
]

puts "Давайте сыграем в игру '\Камень, ножницы, бумага'\ "
puts

final_answer = 1
while final_answer == 1 do 
	puts "Отлично!"
computer_choice = rand(3)

puts "Выберите вариант"
puts
puts "1.Камень"
puts "2.Ножницы"
puts "3.Бумага"
puts

players_input = nil
players_input = gets.to_i
puts

# unless (players_input > 0) && (players_input <= objects.size)
	# puts "Нужно выбрать вариант 1, 2 или 3"
	# exit
# end

# until players_input.between?(1,3) do
until (1..3).include?(players_input) do
	puts "Нужно выбрать вариант 1, 2 или 3"
	players_input = gets.to_i
end
	

players_input -= 1 

if players_input == computer_choice 
	puts "Ничья"
elsif players_input == 0 && computer_choice == 1
		puts "Вы выиграли! Компьютер выбрал \"#{objects[computer_choice]}\" "
elsif players_input == 1 && computer_choice == 2
		puts "Вы выиграли! " + "Компьютер выбрал " + "'" + objects [computer_choice] + "'"
elsif players_input == 2 && computer_choice == 0
		puts "Вы выиграли! " + "Компьютер выбрал " + "'" + objects [computer_choice] + "'"
else
	puts "Победил компьютер " + "У него " + "'" + objects [computer_choice] + "'"
end

 puts "Сыграем еще раз?"
 puts
 puts "1. Да"
 puts "2. Нет"

	final_answer = gets.to_i
	until final_answer.between?(1,2) do
	puts "Нужно выбрать вариант 1 или 2"
	final_answer = gets.to_i
	end
		if final_answer != 1
		end
end
