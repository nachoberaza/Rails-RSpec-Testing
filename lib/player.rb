# Single Class to do testing
class Player
  attr_accessor :credits, :active

  def sub_credits(sub_credits)
    raise StandardError if sub_credits.equal?(0)

    @credits -= sub_credits
  end
end
