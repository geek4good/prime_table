require "set"

module PrimeTable
  class PrimeNumberGenerator
    def self.take(n)
      generate_primes(n)
      primes.take(n)
    end

    private

    def self.generate_primes(up_to)
      while primes.size < up_to
        @num ||= primes[-1]
        @num += 2
        fractions = Set.new(1.upto(@num - 1).map { |i| Rational(i, @num) })

        if prime_fractions.disjoint?(fractions)
          prime_fractions.merge(fractions)
          primes << @num
        end
      end
    end

    def self.primes
      @primes ||= [2, 3]
    end

    def self.prime_fractions
      @prime_fractions ||= Set.new([Rational(1, 2), Rational(1, 3), Rational(2, 3)])
    end

    def self.last_checked_num
      @last_checked_num ||= primes[-1]
    end
  end
end
