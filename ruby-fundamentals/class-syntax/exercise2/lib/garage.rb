class Garage
  def initialize
    @cars = [
      {registration_plate: 'BD51 SMR', make: 'honda'},
      {registration_plate: 'LD10 RXS', make: 'ford'},
      {registration_plate: 'SE60 TSW', make: 'honda'}
    ]
  end

  def cars
    @cars
  end

  def add(hash)
    @cars << hash
  end

  def find(plate)
    @cars.each do |car|
      return car if car[:registration_plate] == plate
    end
  end

  def remove(plate)
    @cars.each do |car|
      if car[:registration_plate] == plate
        @cars.delete(car)
      end
    end
  end

  def all_of_make(make)
    search = []
    @cars.each do |car|
      search << car if car[:make] == make
    end
    search
  end
end
