class Temperature
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
    return false if scale[/^Kk$/] || temperature.negative?

    true
  end

  def check_scale(scale)
    return false unless scale[/^[CcFfKk]$/]

    true
  end

  def converse(scale)
    if check_scale(scale) == false
      puts 'Ошибка! Неверное название шкалы. Обрабатываются только C, K и F.'
      exit
    end

    if @scale[/^[Cc]$/]
      converse_c(scale)

    elsif @scale[/^[Kk]$/]
      converse_k(scale)

    elsif @scale[/^[Ff]$/]
      converse_f(scale)
    end
  end

  def converse_c(scale)
    if scale[/^[Kk]$/]
      @temperature += 273.15

    elsif scale[/^[Ff]$/]
      @temperature = 9 * @temperature / 5 + 32

    end

    @scale = scale
    @temperature = @temperature.round(2)
  end

  def converse_k(scale)
    if scale[/^[Cc]$/]
      @temperature -= 273.15

    elsif scale[/^[Ff]$/]
      @temperature = 9 * (@temperature - 273.15) / 5 + 32

    end

    @scale = scale
    @temperature = @temperature.round(2)
  end

  def converse_f(scale)
    if scale[/^[Cc]$/]
      @temperature = 5 * (@temperature - 32) / 9

    elsif scale[/^[Kk]$/]
      @temperature = 5 * (@temperature - 32) / 9 + 273.15
    end

    @scale = scale
    @temperature = @temperature.round(2)
  end
end
