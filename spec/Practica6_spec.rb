
require_relative "../lib/Practica6/comida.rb"

RSpec.describe "Practica6" do

#it "has a version number" do
#expect(Practica6::VERSION).not_to be nil
#end



  before :each do

    @vaca = Comida.new("Vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 5.6)
  #  @cordero = Comida.new("Cordero", 18.0, 0.0, 17.0, 20.0, 185.0, 0.0)
  #  @camaron = Comida.new("Camaron", 17.6, 1.5, 0.6, 18.0, 2.0, 0.0)
  #  @chocolate = Comida.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4, 0.0)
  #  @salmon = Comida.new("Salmon", 19.9, 0.0, 13.6, 6.0, 3.7, 0.0)
  #  @cerdo = Comida.new("Cerdo", 21.5, 0.0, 6.3, 7.6, 11.0, 0.0)
  #  @pollo = Comida.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1, 0.0)
  #  @queso = Comida.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0, 0.0)
  #  @cerveza = Comida.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
  #  @leche = Comida.new("Leche", 3.3, 4.8, 3.2, 3.2, 8.9, 0.0)
  #  @huevos = Comida.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7, 0.0)
  #  @cafe = Comida.new("Cafe", 0.1, 0.0, 0.0, 0.4, 0.3, 0.0)
  #  @tofu = Comida.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4, 0.0)
  #  @nuez = Comida.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9, 0.0)
  end

  it "Comprobacion de parametros" do
    expect(@vaca.nombre).to eq("Vaca")
    expect(@vaca.proteinas).to eq(21.1)
    expect(@vaca.carbon).to eq(0.0)
    expect(@vaca.lipidos).to eq(3.1)
    expect(@vaca.co2).to eq(50.0)
    expect(@vaca.terreno).to eq(164.0)

  end



  it "Calculo proteinas" do
   expect(@vaca.calculo_proteinas).to eq(84.4)
  end


  it "does something useful" do
    expect(true).to eq(true)
  end
end
