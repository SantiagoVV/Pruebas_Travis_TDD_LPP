require_relative "comida.rb"
require_relative "list.rb"

class Menu_herencia < Menu

include Comparable


attr_accessor :name

def initialize (peter)

    super(peter)
    @plato = List.new()
    @name = peter



end

def <=>(other)
name <=> other.name
end

def valor_total_co2

  aux = 0

  @plato.each do |algo|
    aux = aux + algo.co2

    end
    @contamination = aux


end

def estimacion_m2
  aux = 0

  @plato.each do |algo|
    aux = aux + algo.terreno

    end
    @land = aux.round(2)


end

def eficiencia

  total = 0
  aux1 = estimacion_m2
  aux2 = calcular_gramos
  aux3 = valor_total_co2

    total =((aux2/ aux3)+ aux1).round(2)


end





end
