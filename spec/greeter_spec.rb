require 'greeter'

RSpec.describe Greeter do
    it "says hello" do
      greeter = Greeter.new
      menssage = greeter.greet
      expect(menssage == 'Hello, world!')
    end
end