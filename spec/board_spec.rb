require 'board'
require 'custom_matcher'

RSpec.describe Board do
  # Custom match
  describe "#total_pieces" do

    # First test
    it 'has a total of 32 pieces' do
      board = Board.new
      expect(board.total_pieces).to CustomMatcher.custom_matcher(32)
    end

  end
end