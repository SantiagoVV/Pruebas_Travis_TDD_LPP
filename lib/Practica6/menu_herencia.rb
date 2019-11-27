require_relative "comida.rb"
require_relative "list.rb"

class Menu_herencia < Menu

attr_accessor :name, :proteins, :carbohydrate, :lipids, :pproteins, :pcarbohydrate, :plipids, :contamination, :land, :ration

def initialize (peter)

    super(peter)
    @plato = List.new()
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


end
