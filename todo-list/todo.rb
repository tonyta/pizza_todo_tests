require 'date'

class Todo
  attr_accessor :title, :description, :status, :created_at

  def initialize
    @title = 'title'
    @description = 'description'
    @status = 'Not complete'
    @created_at = DateTime.now
    @status = 'incomplete'
  end

  def mark_as_complete!
    @status = 'complete'
  end
end
