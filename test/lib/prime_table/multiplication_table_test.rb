require "test_helper"

describe PrimeTable::MultiplicationTable do
  subject { PrimeTable::MultiplicationTable(number_range) }
  let(:number_range) { [1, 2, 3] }

  describe "#initialize" do
    it "assigns the table's across and down properties" do
      assert_equal(number_range, subject.across)
      assert_equal(number_range, subject.down)
    end
  end
end
