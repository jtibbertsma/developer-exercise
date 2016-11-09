class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.gsub(/\w{5,}/) { |match| "#{match[0].upcase == match[0] ? 'M' : 'm'}arklar" }
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # Assumes that nth is greater than 2
    nth -= 2
    terms = [1,1]

    nth.times { terms << terms[-1] + terms[-2] }
    terms.inject(0) { |sum, term| term % 2 == 0 ? sum + term : sum }
  end

end
