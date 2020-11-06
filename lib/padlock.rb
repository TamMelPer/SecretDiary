class Padlock

attr_reader :locked

  def initialize
    @locked = true
  end

  def unlock
    @locked = false
  end

  def lock
    @locked = true
  end

end
