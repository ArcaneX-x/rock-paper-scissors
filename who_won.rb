def who_won(user_choice, computer_choice)
# 0 -- ничья
# 1 -- победил игрок
# 2 -- победил компьютер
if user_choice == computer_choice
  return 0
end

win_conditions = ["01", "12", "20"]

code = "#{user_choice}#{computer_choice}" # "01"

win_condition = win_conditions.include?(code)

if win_condition
  return 1
end

return 2
end
