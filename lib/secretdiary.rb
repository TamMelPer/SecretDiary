class SecretDiary

  def locked?
    true
  end

  def add_entry
    fail "Sorry! Diary Locked" if locked? == true
  end
end
