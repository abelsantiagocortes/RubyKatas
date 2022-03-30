class MarsRover
  class << self
    def land(landing_position)
      @landing_position = landing_position
    end

    def landing_position
      @landing_position
    end

    def move(command)
      return landing_position if command.empty?

      coordinates = landing_position.split(',')
      command.each_char do |char|
        coordinates[1] = coordinates[1].to_i + 1 if char == 'M'
      end
      coordinates.join(',')
    end
  end
end
