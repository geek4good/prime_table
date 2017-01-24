require "test_helper"

describe PrimeTable::MultiplicationTable do
  subject { PrimeTable::MultiplicationTable.new(number_range) }
  let(:number_range) { (1..3) }

  describe "#initialize" do
    it "assigns the table's across and down properties" do
      expected = [1, 2, 3]
      assert_equal(expected, subject.across)
      assert_equal(expected, subject.down)
    end
  end

  describe "#to_s" do
    it "pretty-prints the table" do
      assert_equal(<<EXPECTED, subject.to_s)
|      |    1 |    2 |    3 |
|    1 |    1 |    2 |    3 |
|    2 |    2 |    4 |    6 |
|    3 |    3 |    6 |    9 |
EXPECTED
    end
  end
end
