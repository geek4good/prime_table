require "prime_table/version"
require "prime_table/multiplication_table"

module PrimeTable
  def self.multiplication(n)
    primes = PrimeNumberGenerator.take(n)
    table = MultiplicationTable.new(primes)

    table.to_s
  end
end
