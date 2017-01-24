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
end
