one_to_100 = (1..100)

def fizzbuzz(num)
  num.each do | num |
    if (num % 3 == 0) && (num % 5 == 0)
      puts "BitMaker\n"
    elsif (num % 3 == 0)
      puts "Bit\n"
    elsif (num % 5 == 0)
      puts "Maker\n"
    else
      print num.to_s + "\n"
    end
  end
end


fizzbuzz(one_to_100)
