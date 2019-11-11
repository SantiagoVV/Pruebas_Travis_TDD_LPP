

RSpec.describe Practica6 do

  it "has a version number" do
    expect(Practica6::VERSION).not_to be nil
  end



  before :each do
    @vaca = InformacionNutricional.new("vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @lista = List.new(nil)
  end

  it "Constructor" do
    expect(@vaca.nombre).to eq("vaca")
    expect(@vaca.proteinas).to eq("21.1")
    expect(@vaca.carbon).to eq("0.0")
    expect(@vaca.lipidos).to eq("3.1")
    expect(@vaca.c02).to eq("50.0")
    expect(@vaca.terreno).to eq("164.0")

  end

  it "Suma de gramos" do
    expect(@vaca.total_gramos_hombre).to eq(54)
    expect(@vaca.total_gramos_mujer).to eq(41)

  end


  it "Conversion de datos" do
    expect(@vaca.calculo_glucidos).to eq(0.0)
    expect(@vaca.calculo_proteinas).to eq(84.4)
    expect(@vaca.calculo_lipidos).to eq(27.9)

  end

  it "Cantidad energitica del alimento" do
    expect(@vaca.calculo_energetico).to eq(112.3)

  end

  it "Mostrar alimento formateado" do
    expect(@cocacola.to_s).to eq("vaca, 21.1, 0.0, 3.1, 50.0, 164.0")
  end

  it "Impacto ambiental diario de un hombre" do

  end

  it "Impacto ambiental diario de una mujer" do


  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
