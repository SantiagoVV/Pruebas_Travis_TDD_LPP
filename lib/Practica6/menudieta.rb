require_relative "comida.rb"

class Menu

attr_accessor :name, :proteins, :carbohydrate, :lipids, :contamination, :land, :ration

def initialize (peter)

    @plato = []
    @name = peter
    @proteins = 0.0
    @carbohydrate = 0.0
    @lipidss = 0.0
    @contamination = 0.0
    @land = 0.0
    @ration = 0.0


end

def añadir_comida(comida)

    @plato.push(comida)

end

def menu_nombre

  @name

end

def calcular_proteinas
  aux = 0

  @plato.each do |algo|
    aux = aux + algo.proteinas

    end
    @proteins = aux
end



end
