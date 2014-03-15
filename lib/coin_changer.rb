class CoinChanger

  def self.make_change(cents)
    change = []
    [25, 10, 5, 1].each do |coin|
      while cents >= coin 
        change << coin 
        cents -= coin 
      end
    end
    change
  end
end
