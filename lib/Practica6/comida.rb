class Comida

include Comparable
  attr_accessor :nombre, :proteinas, :carbon, :lipidos, :co2, :terreno, :racion


  def initialize (name, proteins, carbohydrates, lipids, contamination, land, ration)

      @nombre = name
      @proteinas = proteins
      @carbon = carbohydrates
      @lipidos = lipids
      @co2 = contamination
      @terreno = land
      @racion = ration


  end

  def <=>(other)
    calculo_energetico <=> other.calculo_energetico
  end

  def sacar_nombre

    @nombre

  end

  def calculo_proteinas

    ( ( @proteinas*4 ) *@racion  ).round(1)

  end

  def calculo_carbohidratos

    ( ( @carbon*4 ) *@racion).round(1)

  end


  def calculo_lipidos

    ( ( @lipidos*9 ) *@racion ).round(1)


  end

  def calculo_energetico

    ( calculo_proteinas + calculo_carbohidratos + calculo_lipidos ).round(1)

  end

  def calculo_terreno

    ( @terreno* @racion ).round(1)

  end

  def calculo_co2

    ( @co2 * @racion ).round(1)

  end

  def datos_formateados

    vector = [ @nombre, calculo_proteinas, calculo_carbohidratos, calculo_lipidos, @co2, @terreno, @racion ]

  end

  def calculo_co2_anual

    (calculo_co2 * 365).round(1)

  end

end
