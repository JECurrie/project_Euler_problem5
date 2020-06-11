=begin
Smallest multiple
  Show HTML problem content  
Problem 5
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

#smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

def compute_lowest_dividing_number(number)
  for i in 2..(number/2)
    return i if number%i == 0
  end
  number
end

lcm = 1
n = 20
for i in 1..n
  # look ahead appraoch
  next_number = [i+1, n].min
  lcm *= compute_lowest_dividing_number(next_number) if lcm % next_number != 0
end
puts lcm

#