require "prime_table/version"
require "prime_table/multiplication_table"

module PrimeTable
  def self.multiplication(n)
    <<PRIME_TABLE
|      |    2 |    3 |    5 |
|    2 |    4 |    6 |   10 |
|    3 |    6 |    9 |   15 |
|    5 |   10 |   15 |   25 |

PRIME_TABLE
  end
end
