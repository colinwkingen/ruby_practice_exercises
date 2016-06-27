#Basic Ruby Exercises

class Fixnum
  define_method(:ping_pong) do
    num_processor = []
    numbers = 1..self
    numbers.each() do |number|
      if number % 15 == 0
        num_processor.push('ping-pong')
      elsif number % 3 == 0
        num_processor.push('ping')
      elsif number % 5 == 0
        num_processor.push('pong')
      else
        num_processor.push(number)
      end
    end
    num_processor
  end
end

 puts 63.ping_pong()


class String
  define_method(:up_case) do
    input_string = self
    final_string = []
    final_string = input_string.split(" ")
    capitalized_array = []
    final_string.each() do |each_word|
      each_word = each_word[0].chr.upcase + each_word.slice(1, self.length)
      capitalized_array.push(each_word)
    end
    capitalized_array.join(' ')
  end
end

puts "is it going to break".up_case()

class String
  define_method(:leet_convert) do
    final_string = ""
    counter = 0
    self.each_char() do |this_char|
      if this_char == "e"
        final_string.concat("3")
      elsif this_char == "o"
        final_string.concat("0")
      elsif this_char == "I"
        final_string.concat("1")
      elsif (this_char == "s") & (self[counter - 1] != ' ')
        final_string.concat('z')
      else
        final_string.concat(this_char)
      end
      counter += 1
    end
    final_string
  end
end

class String
  define_method(:leet_convert) do
    word_range = 0..self.length
    string = self
    final_string = ''
    word_range.each() do |place|
      letter = string[place]
      if (letter == 's') & (self[place - 1] != ' ')
        final_string.concat('z')
      elsif letter == 'e'
        final_string.concat('3')
      elsif letter == 'o'
        final_string.concat('0')
      elsif letter == 'I'
        final_string.concat('1')
      else
        final_string.concat(string[place])
      end
      final_string
    end
  end
end

string = "the RAIN in spain is on the cathedral"
puts string.leet_convert()

same y or x axis value.
proportional change in absolute value of both x and y.

class Array
  define_method(:attack?) do |position_x, position_y|
    x = self[0]
    y = self[1]
    if (x == position_x) | (y == position_y)
      true
    elsif (position_x - x).abs == (position_y - y).abs
      true
    else
      false
    end
  end
end

puts [4,4].attack?(8,8)
