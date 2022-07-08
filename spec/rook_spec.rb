require 'rook'

RSpec.describe Rook do
  # First test
  it 'returns the correct points value' do
    rook = Rook.new
    rook_points = rook.points
    expect(rook_points).to be(5)
  end

  # Second test
  it 'returns the correct name' do
    rook = Rook.new
    rook_name = rook.name
    expect(rook_name).to eq("Rook")
  end

  # Thirth test
  it 'returns a point value greater than a pawns' do
    rook = Rook.new
    rook_points = rook.points
    expect(rook_points).to be_between(1, 10).exclusive
  end
end