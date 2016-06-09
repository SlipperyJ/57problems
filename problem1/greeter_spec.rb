require './greeter'

RSpec.describe Greeter do
  describe "#greet" do
    it "greets a user" do
      greeter = Greeter.new
      names = ["Ross", "Luke", "Mark"]     
      
      names.each do |name|
        welcome_string = greeter.greet(name)

        expect(welcome_string).to eq("Hello, #{name}, nice to meet you!")
      end
    end
  end
end
