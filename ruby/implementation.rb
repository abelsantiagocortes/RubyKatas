class StringCalculator
  def self.calculate(string_numbers)
    # Forma Pro en HD
    string_numbers.split(",").map(&:to_i).sum

    # Forma Pro
    # - - - - - - - - -
    # return string_numbers.to_i if string_numbers.length < 2

    # string_numbers.split(",").map(&:to_i).sum

    # Forma Guarra
    # - - - - - - - - -
    # if(string_numbers.empty?)
    #   0
    # elsif(string_numbers.length==1)
    #   string_numbers.to_i
    # end
    # total=0
    # string_numbers.split(",").each { |number|
    #   total += number.to_i
    # }
    # total
  end
end
