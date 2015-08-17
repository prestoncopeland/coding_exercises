=begin
Preston Copeland
August 17, 2015
Project Euler

Number Letter Counts

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

=end

def number_to_letter_total(start_range, end_range)

  word_array = (start_range..end_range).map {|number| number_to_word(number) }
  word_array.map {|word| letter_count(word) }.inject(:+)

end

def number_to_word(number)
  ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  teens = %{ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
  tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  return "one thousand" if (number == 1000)
  word = ""

  place = 10**2
  place_value = number/place
  remainder = number%place
  word += " #{ones[place_value]} hundred"
  place = 10**1
  place_value = remainder/place
  remainder = remainder%place
  if(place_value == 0)
    return word += " #{ones[remainder]}"
  elsif(place_value == 1)
    return word += " #{teens[remainder]}"
  else
    word += " #{tens[place_value]}"
  end
  word += " #{ones[remainder]}"

  word

end