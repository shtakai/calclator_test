require "rspec/autorun"

class Caluclator
  def add(a, b)
    a + b
  end

  def factorial(n)
    if n<= 1
      1
    else
      (1..n).reduce(:*)
    end
  end
end


describe Caluclator do
  describe "#add" do
    it "returns the sum of its arguments" do
      calc = Caluclator.new

      expect(calc.add(5, 10)).to eq(15)
    end

    it "returns the sum of two different arguments" do
      calc = Caluclator.new
      expect(calc.add(1, 2)).to eq(3)
    end
  end

  describe "#Factorial" do
    it "returns 1 when given 0" do
      calc = Caluclator.new
      expect(calc.factorial(0)).to eq(1)
    end

    it "returns 120 when given 5" do
      calc = Caluclator.new
      expect(calc.factorial(5)).to eq(120)
    end
  end


end
