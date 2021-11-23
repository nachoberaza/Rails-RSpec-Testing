require './app/models/greeter.rb'

RSpec.describe Greeter do
  describe '#greet' do
    it "says hello" do
        greeter = Greeter.new
        menssage = greeter.greet
        expect(menssage == 'Hello, world!')
    end
  end
end
 