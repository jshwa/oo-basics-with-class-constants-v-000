class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand if BRANDS.detect {|b| b == brand} == nil
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
