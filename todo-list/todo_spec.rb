require 'rspec'
# require 'spec_helper'
require_relative 'todo'

describe Todo  do

  let(:todo) {Todo.new()}

  it "has a title" do
    todo.should respond_to(:title)
  end

  it "has a description" do
    expect(todo.attributes).to include(:description)
  end

  it "has a status" do
    expect(todo.attributes).to include(:status)
  end

  it "has a created_at timestamp" do
    expect(todo.attributes).to include(:created_at)
  end

end
