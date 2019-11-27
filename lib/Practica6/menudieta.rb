require_relative "comida.rb"

class Menu

attr_accessor :nombre, :proteinas, :carbon, :lipidos, :co2, :terreno

def initialize (name)

    @plato = []
    @nombre = name
    @proteinas = 0.0
    @carbon = 0.0
    @lipidos = 0.0
    @co2 = 0.0
    @terreno = 0.0
    @racion = 0.0


end

def añadir_comida(comida)

    @plato.push(comida)

end

def menu_nombre

  @nombre


end


end
