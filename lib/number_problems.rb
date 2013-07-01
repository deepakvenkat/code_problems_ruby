class NumberProblem

  def self.prime_numbers(n)
    #Sieve of Eratosthenes
    return "invalid input" unless n.is_a? Integer
    result = (2..n).inject({}) {|hash, key| hash[key] = true; hash}
    (2..Math.sqrt(n)).each do |i|
      if result[i] == true
        ((i*i)..n).step(i) do |j|
          result[j] = false
        end
      end
    end
    result.reject! {|key, value| value == false}
    return result.keys
  end

  def self.factorial(n)
    return "invalid input" unless n.is_a? Integer
    return 1 if n == 0 || n == 1
    return n * factorial(n - 1)
  end

  def self.reverse_integer(n)
    return "invalid input" unless n.is_a? Integer
    result = 0
    while(n > 0)
      i = n % 10
      n = n / 10
      result = (result * 10) + i
    end
    return result
  end
end