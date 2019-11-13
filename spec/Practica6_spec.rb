
require_relative "../lib/Practica6/comida.rb"

RSpec.describe "Practica6" do

#it "has a version number" do
#expect(Practica6::VERSION).not_to be nil
#end



  before :each do

    @vaca = Comida.new("Vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 6)
  #  @cordero = Comida.new("Cordero", 18.0, 0.0, 17.0, 20.0, 185.0, 0.0)
  #  @camaron = Comida.new("Camaron", 17.6, 1.5, 0.6, 18.0, 2.0, 0.0)
    @chocolate = Comida.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4, 3)
  #  @salmon = Comida.new("Salmon", 19.9, 0.0, 13.6, 6.0, 3.7, 0.0)
  #  @cerdo = Comida.new("Cerdo", 21.5, 0.0, 6.3, 7.6, 11.0, 0.0)
  #  @pollo = Comida.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1, 0.0)
  #  @queso = Comida.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0, 0.0)
    @cerveza = Comida.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22, 21)
  #  @leche = Comida.new("Leche", 3.3, 4.8, 3.2, 3.2, 8.9, 0.0)
  #  @huevos = Comida.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7, 0.0)
    @cafe = Comida.new("Cafe", 0.1, 0.0, 0.0, 0.4, 0.3, 14)
    @lentejas = Comida.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4, 3)
    @nuez = Comida.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9, 3)
  end

  it "Comprobacion de parametros" do
    expect(@vaca.sacar_nombre).to eq("Vaca")
    expect(@vaca.proteinas).to eq(21.1)
    expect(@vaca.carbon).to eq(0.0)
    expect(@vaca.lipidos).to eq(3.1)
    expect(@vaca.co2).to eq(50.0)
    expect(@vaca.terreno).to eq(164.0)

  end



  it "Calculo proteinas" do
   expect(@vaca.calculo_proteinas).to eq(506.4)
  end

  it "Calculo carbohidratos" do
   expect(@vaca.calculo_carbohidratos).to eq(0.0)
  end

  it "Calculo lipidos" do
   expect(@vaca.calculo_lipidos).to eq(167.4)
  end

  it "Cantidad energetica del alimento" do
   expect(@vaca.calculo_energetico).to eq(673.8)
  end

  it "Datos de comida formateados" do
    expect(@vaca.datos_formateados).to eq(["Vaca", 506.4, 0.0, 167.4, 50.0, 164.0, 6])
  end

  it "Terreno utilizado" do
    expect(@vaca.calculo_terreno).to eq(984.0)
  end

  it "CO2 emitido" do
    expect(@vaca.calculo_co2).to eq(300.0)
  end

  it "Cantidad energetica del hombre " do
    expect(@vaca.calculo_energetico + @chocolate.calculo_energetico + @lentejas.calculo_energetico).to be >= 3000.0
  end

  it "Cantidad energetica de la  mujer " do
    expect(@cerveza.calculo_energetico + @cafe.calculo_energetico + @nuez.calculo_energetico).to be >= 2300.0
  end

  it " Impacto ambiental mujer " do

    expect((@cerveza.calculo_co2 + @cafe.calculo_co2 + @nuez.calculo_co2).round(2)).to eq(11.5)
    expect((@cerveza.calculo_terreno + @cafe.calculo_terreno  + @nuez.calculo_terreno).round(2) ).to eq(32.5)

  end

  it " Impacto ambiental hombre " do

    expect((@vaca.calculo_co2 + @chocolate.calculo_co2 + @lentejas.calculo_co2).round(2)).to eq(308.1)
    expect((@vaca.calculo_terreno + @chocolate.calculo_terreno  + @lentejas.calculo_terreno).round(2) ).to eq(1004.4)

  end





  it "does something useful" do
    expect(true).to eq(true)
  end
end
