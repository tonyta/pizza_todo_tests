class Pizza
  attr_accessor :name,:description,:time_baked,:toppings

  def initialize()
    @name = ""#args.fetch(:name)
    @description = 0#args.fetch(:description)
    @time_baked = 0
    @toppings = []
  end

  def <<(topping)
    puts "Fuck Tony"
    @toppings << topping
  end

end

class Topping
end
