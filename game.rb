objects = [
	"Камень",
	"Ножницы",
	"Бумага"
]
computer_choise = rand(3)

puts "Давайте сыграем в игру '\Камень, ножницы, бумага'\ "
puts
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

if players_input == computer_choise 
	puts "Ничья"
elsif players_input == 0 && computer_choise == 1
		puts "Вы выиграли! " + "Компьютер выбрал " + "'" + objects [computer_choise] + "'"
elsif players_input == 1 && computer_choise == 2
		puts "Вы выиграли! " + "Компьютер выбрал " + "'" + objects [computer_choise] + "'"
elsif players_input == 2 && computer_choise == 0
		puts "Вы выиграли! " + "Компьютер выбрал " + "'" + objects [computer_choise] + "'"
else
	puts "Победил компьютер " + "У него " + "'" + objects [computer_choise] + "'"
end

