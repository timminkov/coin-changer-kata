require 'coin_changer'

describe CoinChanger do

  { 1  => [1],
    2  => [1, 1],
    3  => [1, 1, 1],
    5  => [5],
    6  => [5, 1],
    10 => [10],
    64 => [25, 25, 10, 1, 1, 1, 1] }.each do |input, expectation|
      it "should return #{expectation} when given #{input}" do
        expect(CoinChanger.make_change(input)).to eq(expectation)
      end
  end

end
