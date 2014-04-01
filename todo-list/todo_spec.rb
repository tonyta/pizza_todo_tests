require 'rspec'
# require 'spec_helper'
require_relative 'todo'

describe Todo  do

  let(:todo) {Todo.new()}#{title:"write tests",description: "Write some fucking tests", status:"complete",created_at:Time.now})}

  it "has a title" do
    todo.should respond_to(:title)
  end

  it "has a description" do
    todo.should respond_to(:description)
  end

  it "has a status" do
    todo.should respond_to(:status)
  end

  it "has a created_at timestamp" do
    todo.should respond_to(:created_at)
  end

end
