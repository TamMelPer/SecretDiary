class SecretDiary

attr_reader :entries, :padlock

  def initialize(padlock=Padlock.new)
    @padlock = padlock
    @entries = []
  end

  def add_entry(entry)
    fail "Sorry! Diary Locked" if @padlock.locked == true
    @entries << entry
  end

  def get_entries
    fail "Sorry! Diary Locked" if @padlock.locked == true
    puts @entries
  end

  def lock
    @padlock.lock
  end

  def unlock
    @padlock.unlock
  end

  # def locked?
  #   @padlock.locked
  # end
end
