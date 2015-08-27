#Celcius to Fahrenheit


class Celcius
  attr_accessor :temperature
  def initialize(temperature)
    @temperature = temperature
  end

  def convert_to_fahrenheit
    (@temperature*1.8 + 32).round
  end

  def to_s
    "#{@temperature} degrees C"
  end

  def to_s_fahrenheit
    "#{convert_to_fahrenheit} degrees F"
  end

end

puts "What is the temperature in celcius for Monday?"
user_input_monday = gets.chomp.to_i
monday_temperature = Celcius.new(user_input_monday)
puts monday_temperature.to_s
puts monday_temperature.to_s_fahrenheit




