# Privacy
class Machine
  private
  attr_writer :switch
  public
  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end
private
  def flip_switch(desired_state)
    self.switch = desired_state
  end
end