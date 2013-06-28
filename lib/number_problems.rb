class NumberProblem

  def self.prime_numbers(n)
    #Sieve of Eratosthenes
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
    return 1 if n == 0 || n == 1
    return n * factorial(n - 1)
  end

end