def who_won(user_choice, computer_choice, win_conditions)
  return 0 if user_choice == computer_choice

  code = "#{user_choice}#{computer_choice}"

  win_condition = win_conditions.include?(code)

  return 1 if win_condition

  2
end
