require "test_helper"

describe PrimeTable::PrimeNumberGenerator do
  subject { PrimeTable::PrimeNumberGenerator }
  let(:primes_lt_100) { [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41,
                         43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]}

  describe ".take" do
    it "returns the first n prime numbers" do
      assert_equal(primes_lt_100, subject.take(25))
    end
  end
end
