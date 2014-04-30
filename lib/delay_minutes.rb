require "delay_minutes/version"

module Delay_Minutes

  # delay_max = maximum delay in minutes
  def self.exec(delay_max)
    begin
      if delay_max > 0.0
        delay_minutes = rand * delay_max
        delay_sec = delay_minutes * 60
        puts
        puts 'DELAY MODE'
        puts "Executing delay of #{delay_minutes} minutes."
        sleep (delay_sec)
        puts 'Delay completed'
      else
        puts "The specified delay value of #{delay_max} minutes is not valid."
        puts "Skipping delay"
      end
    rescue
      puts "The specified delay value of #{delay_max} minutes is not valid."
      puts "Skipping delay"
    end
  end
end
