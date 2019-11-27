require_relative "comida.rb"

class Menu

attr_accessor :name, :proteins, :carbohydrate, :lipids, :pproteins, :pcarbohydrate, :plipids, :contamination, :land, :ration

def initialize (peter)

    @plato = []
    @name = peter
    @proteins = 0.0
    @carbohydrate = 0.0
    @lipidss = 0.0
    @pproteins = 0.0
    @pcarbohydrate = 0.0
    @plipidss = 0.0
    @contamination = 0.0
    @land = 0.0
    @ration = 0.0


end

def añadir_comida(comida)

    @plato.push(comida)

end



def calcular_proteinas
  aux = 0

  @plato.each do |algo|
    aux = aux + algo.proteinas

    end
    @proteins = aux
end

def calcular_lipidos
  aux = 0

  @plato.each do |algo|
    aux = aux + algo.lipidos

    end
    @proteins = aux.round(2)
end

def calcular_carbon
  aux = 0

  @plato.each do |algo|
    aux = aux + algo.carbon

    end
    @proteins = aux.round(2)
end

def calcular_gramos
  aux = 0

  @plato.each do |algo|
    aux = aux + (algo.racion * 100)
    end
  @ration = aux.round(2)
end

def porcentaje_proteinas

  aux2 = calcular_gramos
  aux = 0
  aux3 = 0

  @plato.each do |algo|
    aux = aux + algo.proteinas
    end
  aux3 = (((aux * 100)/aux2).round(2))
  @pproteins = aux3
end



def porcentaje_lipidos
  aux2 = calcular_gramos
  aux = 0
  aux3 = 0

  @plato.each do |algo|
    aux = aux + algo.lipidos
    end
  aux3 = (((aux * 100)/aux2).round(2))
  @pproteins = aux3
end



def porcentaje_carbon
  aux2 = calcular_gramos
  aux = 0
  aux3 = 0

  @plato.each do |algo|
    aux = aux + algo.carbon
    end
  aux3 = (((aux * 100)/aux2).round(2))
  @pproteins = aux3
end


def calorico_total

  aux = (calcular_proteinas + calcular_lipidos + calcular_carbon).round(2)

end


def to_s
 os=""
  @plato.each do |elemento|
   os +=    "Nombre: "
   os +=   elemento.nombre.to_s + " Proteinas: "
   os +=   elemento.proteinas.to_s + " Lipidos: "
   os +=   elemento.lipidos.to_s + " Carbohidratos: "
   os +=   elemento.carbon.to_s
 end
 os
end





end
