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

  def required_bake_time

  end
end

class Topping
  attr_accessor :required_bake_time
  def initialize(args)
    @required_bake_time = args.fetch(:required_bake_time)
  end
end
