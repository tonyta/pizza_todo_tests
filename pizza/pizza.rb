class Pizza

  def initialize(args)
    @name = args.fetch(:name)
    @description = args.fetch(:description)
    @time_baked = args.fetch(:time_baked)

  end


end
