class Todo
  attr_accessor :title, :description, :status, :created_at

  def initialize
    @title = 'title'
    @description = 'description'
    @status = 'Not complete'
    @created_at = Time.now
  end

end
