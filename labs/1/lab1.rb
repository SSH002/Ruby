class Lab1
  attr_reader :temperature, :scale

  def initialize(temperature, scale)
    if number?(temperature) == false
      abort 'Ошибка! Значение \'Температура\' не является числом.'
      exit
    end
    temperature = temperature.to_f

    if check_scale(scale) == false
      abort 'Ошибка! Неверное название шкалы. Обрабатываются только C, K и F.'
      exit
    end

    if check_kelvin(temperature, scale) == false
      abort 'Ошибка! Температура по шакле Кельвина не может быть ниже нуля.'
      exit
    end

    @temperature = temperature
    @scale = scale
  end

  def number?(temperature)
    return false unless temperature[/^-?[1-9][0-9]*\.?[0-9]*$/]

    true
  end

  def check_kelvin(temperature, scale)
    if scale.include?('K') && scale.include?('k') || temperature.negative?
      return false
    end

    true
  end

  def check_scale(sc)
    if sc != 'C' && sc != 'K' && sc != 'F' && sc != 'c' && sc != 'k' && sc != 'f'
      return false
    end

    true
  end

  def converse(scale)
    if check_scale(scale) == false
      puts 'Ошибка! Неверное название шкалы. Обрабатываются только C, K и F.'
      exit
    end

    if (@scale == 'C' || @scale == 'c') && (scale == 'K' || scale == 'k')
      @scale = 'K'
      @temperature += 273.15

    elsif (@scale == 'C' || @scale == 'c') && (scale == 'F' || scale == 'f')
      @scale = 'F'
      @temperature = 9 * @temperature / 5 + 32

    elsif (@scale == 'K' || @scale == 'k') && (scale == 'C' || scale == 'c')
      @scale = 'C'
      @temperature -= 273.15

    elsif (@scale == 'K' || @scale == 'k') && (scale == 'F' || scale == 'f')
      @scale = 'F'
      @temperature = 9 * (@temperature - 273.15) / 5 + 32

    elsif (@scale == 'F' || @scale == 'f') && (scale == 'C' || scale == 'c')
      @scale = 'C'
      @temperature = 5 * (@temperature - 32) / 9

    elsif (@scale == 'F' || @scale == 'f') && (scale == 'K' || scale == 'k')
      @scale = 'K'
      @temperature = 5 * (@temperature - 32) / 9 + 273.15
    end

    @temperature = @temperature.round(2)
  end
end
