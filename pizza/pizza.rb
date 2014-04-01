class Pizza
  attr_accessor :name,:description,:time_baked
  def initialize()
    @name #= args.fetch(:name)
    @description #= args.fetch(:description)
    @time_baked = 0
  end


end
