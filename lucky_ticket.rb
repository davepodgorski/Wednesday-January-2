# accept digit as argument
# turn integer into array
# divide array into 2 arrays
# total both arrays
# return true if numbers are equal and false if numbers are unequal

def lucky_ticket(number)
  array = number.split('').map(&:to_i)
  if array.length % 2 != 0
  array.delete_at(array.length / 2)
  end
length = array.length / 2
my_first_array = array.slice(0, length)
my_second_array = array.drop(length)
first_num = my_first_array.sum
second_num = my_second_array.sum
  if first_num == second_num
    return true
  else
    return false
  end

end

puts lucky_ticket("111111")
