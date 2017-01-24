require "test_helper"
require "open3"

describe "prime_table" do
  let(:project_root) { File.expand_path("../../..", __FILE__) }
  let(:bin) { File.join(project_root, "bin", "prime_table") }

  describe "`bin/prime_table 3`" do
    it "prints a multiplication table of the first three prime numbers" do
      output, _ = Open3.capture2(bin, "3")
      assert_equal <<PRIME_TABLE, output
|      |    2 |    3 |    5 |
|    2 |    4 |    6 |   10 |
|    3 |    6 |    9 |   15 |
|    5 |   10 |   15 |   25 |

PRIME_TABLE
    end
  end

  describe "`bin/prime_table 5`" do
    it "prints a multiplication table of the first three prime numbers" do
      output, _ = Open3.capture2(bin, "5")
      assert_equal <<PRIME_TABLE, output
|      |    2 |    3 |    5 |    7 |   11 |
|    2 |    4 |    6 |   10 |   14 |   22 |
|    3 |    6 |    9 |   15 |   21 |   33 |
|    5 |   10 |   15 |   25 |   35 |   55 |
|    7 |   14 |   21 |   35 |   49 |   77 |
|   11 |   22 |   15 |   25 |   77 |  121 |

PRIME_TABLE
    end
  end
end
