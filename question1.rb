(0..100).each do |num|
  def quiz(num)
    if num + 0 == 0
      puts 0
    elsif num % 3 == 0 && num % 5 == 0 
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      puts num
    end
  end  
  puts quiz(num) 
end