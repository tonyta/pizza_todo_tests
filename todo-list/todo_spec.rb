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

  it "should expect a DateTime for the timestamp" do
    todo.created_at.class.should be == DateTime
  end


  it "should have a default status of 'incomplete'" do
    todo.status.should be =="incomplete"
  end

  it "should be initialized with a created_at timetamp" do
    todo.created_at.should_not be_nil
  end

end
