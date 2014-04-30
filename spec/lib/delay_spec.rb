require 'spec_helper'

describe Delay_Minutes do
  it "should pass the 1-second test" do    
    t_total_seconds = 0.0
    t_input_seconds = 1.0
    t_input_minutes = t_input_seconds/60.0    
    for i in 1..10    
      t1 = Time.now()
      Delay_Minutes.exec(t_input_minutes)
      t2 = Time.now()
      t_output = t2 - t1
      t_total_seconds += t_output
    end
    t_total_seconds.should < 7.0 * t_input_seconds
    t_total_seconds.should > 3.0 * t_input_seconds
    
  end
end