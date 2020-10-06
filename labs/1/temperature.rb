class Temperature
  attr_reader :temperature, :scale

  # 'temper' is temperature
  def initialize(temper, scale)
    abort 'Значение \'Температура\' не число.' if number?(temper) == false
    temper = temper.to_f

    abort 'Обрабатываются только шкалы C, K и F.' if check_scale(scale) == false

    abort 'Температура по Келвин выше 0' if check_kelvin(temper, scale) == false

    @temperature = temper
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
    abort 'Обрабатываются только шкалы C, K и F.' if check_scale(scale) == false

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
