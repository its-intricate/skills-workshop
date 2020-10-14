class Car
  def initialize
    @speed = 0
  end

  def speed
    @speed
  end

  def accelerate(number)
    @speed += number
  end

  def brake(number)
    @speed -= number
  end
end
