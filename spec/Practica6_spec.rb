
require_relative "../lib/Practica6/comida.rb"
require_relative "../lib/Practica6/list.rb"
require_relative "../lib/Practica6/menudieta.rb"
require_relative "../lib/Practica6/menu_herencia.rb"

RSpec.describe "Practica6" do

#it "has a version number" do
#expect(Practica6::VERSION).not_to be nil
#end



  before :each do

    @vaca = Comida.new("Vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 6)
    # @cordero = Comida.new("Cordero", 18.0, 0.0, 17.0, 20.0, 185.0, 0.0)
    # @camaron = Comida.new("Camaron", 17.6, 1.5, 0.6, 18.0, 2.0, 0.0)
    @chocolate = Comida.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4, 3)
    # @salmon = Comida.new("Salmon", 19.9, 0.0, 13.6, 6.0, 3.7, 0.0)
    # @cerdo = Comida.new("Cerdo", 21.5, 0.0, 6.3, 7.6, 11.0, 0.0)
    # @pollo = Comida.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1, 0.0)
    # @queso = Comida.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0, 0.0)
    @cerveza = Comida.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22, 21)
    # @leche = Comida.new("Leche", 3.3, 4.8, 3.2, 3.2, 8.9, 0)
    # @huevos = Comida.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7, 0)
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
#------------------------------------------------------------------------Lista-Doblemente-Enlazada----------------------------------------------------#
RSpec.describe "Practica7" do

  before :each do

    @lista = List.new()

    @vaca = Comida.new("Vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 6)
    @cordero = Comida.new("Cordero", 18.0, 0.0, 17.0, 20.0, 185.0, 4)
    @camaron = Comida.new("Camaron", 17.6, 1.5, 0.6, 18.0, 2.0, 8)
    @chocolate = Comida.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4, 3)
    @salmon = Comida.new("Salmon", 19.9, 0.0, 13.6, 6.0, 3.7, 6)
    @cerdo = Comida.new("Cerdo", 21.5, 0.0, 6.3, 7.6, 11.0, 4)
    @pollo = Comida.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1, 14)
    @queso = Comida.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0, 5)
    @cerveza = Comida.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22, 23)
    @leche = Comida.new("Leche", 3.3, 4.8, 3.2, 3.2, 8.9, 19)
    @huevos = Comida.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7, 8)
    @cafe = Comida.new("Cafe", 0.1, 0.0, 0.0, 0.4, 0.3, 14)
    @lentejas = Comida.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4, 3)
    @nuez = Comida.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9, 3)


  end


  it "Insertar comida " do

      expect(@lista.vacia).to be true
      @lista.insertar_head(@cordero)
      @lista.insertar_head(@vaca)
      @lista.insertar_head(@pollo)
      @lista.insertar_head(@camaron)
      expect(@lista.vacia).to be false

  end

  it "Extraer primer elemento de la lista " do

    expect(@lista.vacia).to be true
    @lista.insertar_tail(@cordero)
    @lista.insertar_tail(@vaca)
    @lista.insertar_tail(@salmon)
    @lista.insertar_tail(@nuez)

    expect(@lista.tamaño).to eq(4)

    @lista.extraer_head
    expect(@lista.tamaño).to eq(3)



  end


  it " Dieta española " do


    @listaES = List.new()



    @listaES.insertar_head(@cordero)
    @listaES.insertar_tail(@chocolate)


    #
    expect(@listaES.tamaño).not_to eq(0)
    expect(@listaES.head.valor).to eq(@cordero)
    expect(@listaES.tail.valor).to eq(@chocolate)



    expect(@listaES.buscar(@cordero).calculo_energetico + @listaES.buscar(@chocolate).calculo_energetico).to be >= 2300.0

    expect(@listaES.buscar(@cordero).calculo_co2 +  @listaES.buscar(@chocolate).calculo_co2).to eq(86.9)
    expect(@listaES.buscar(@cordero).calculo_co2_anual +  @listaES.buscar(@chocolate).calculo_co2_anual).to eq(31718.5)
    expect(@listaES.buscar(@cordero).calculo_terreno +  @listaES.buscar(@chocolate).calculo_terreno).to eq(750.2)

    # expect(@listaES.insertar_head(@vaca)).equal?(@vaca)
    # expect(@listaES.insertar_head(@lentejas)).equal?(@lentejas)
    # expect(@listaES.insertar_head(@cordero)).equal?(@cordero)
     expect(@listaES.tamaño).to eq(2)
    # expect(@listaES.buscar(@cordero)).equal?(@cordero)

    #
    # expect(@listaES.buscar(@cordero)).to eq("Cordero")

    #  expect((@listaES.buscar(@cordero).calculo_co2 + @listaES.buscar(@vaca).calculo_co2 + @listaES.buscar(@lentejas).calculo_co2)).to eq(308.1)

  end

  it " Dieta Vasca " do

    @listaVasca = List.new()
    @listaVasca.insertar_head(@queso)
    @listaVasca.insertar_tail(@cerdo)

    expect(@listaVasca.tamaño).not_to eq(0)
    expect(@listaVasca.head.valor).to eq(@queso)
    expect(@listaVasca.tail.valor).to eq(@cerdo)

    expect(@listaVasca.buscar(@queso).calculo_energetico + @listaVasca.buscar(@cerdo).calculo_energetico).to be >= 2300.0

    expect(@listaVasca.buscar(@queso).calculo_co2 +  @listaVasca.buscar(@cerdo).calculo_co2).to eq(85.4)
    expect(@listaVasca.buscar(@queso).calculo_co2_anual +  @listaVasca.buscar(@cerdo).calculo_co2_anual).to eq(31171.0)
    expect(@listaVasca.buscar(@queso).calculo_terreno +  @listaVasca.buscar(@cerdo).calculo_terreno).to eq(249.0)



  end


  it " Dieta Vegetariana " do

    @listaVegetariana = List.new()
    @listaVegetariana.insertar_head(@leche)
    @listaVegetariana.insertar_tail(@huevos)

    expect(@listaVegetariana.tamaño).not_to eq(0)
    expect(@listaVegetariana.head.valor).to eq(@leche)
    expect(@listaVegetariana.tail.valor).to eq(@huevos)

    expect(@listaVegetariana.buscar(@leche).calculo_energetico + @listaVegetariana.buscar(@huevos).calculo_energetico).to be >= 2300.0

    expect(@listaVegetariana.buscar(@leche).calculo_co2 +  @listaVegetariana.buscar(@huevos).calculo_co2).to eq(94.4)
    expect(@listaVegetariana.buscar(@leche).calculo_co2_anual +  @listaVegetariana.buscar(@huevos).calculo_co2_anual).to eq(34456.0)
    expect(@listaVegetariana.buscar(@leche).calculo_terreno +  @listaVegetariana.buscar(@huevos).calculo_terreno).to eq(214.7)



  end

  it " Dieta Vegetaliana " do

    @listaVegetaliana = List.new()
    @listaVegetaliana.insertar_head(@nuez)
    @listaVegetaliana.insertar_tail(@cerveza)

    expect(@listaVegetaliana.tamaño).not_to eq(0)
    expect(@listaVegetaliana.head.valor).to eq(@nuez)
    expect(@listaVegetaliana.tail.valor).to eq(@cerveza)

    expect(@listaVegetaliana.buscar(@nuez).calculo_energetico + @listaVegetaliana.buscar(@cerveza).calculo_energetico).to be >= 2300.0

    expect(@listaVegetaliana.buscar(@nuez).calculo_co2 +  @listaVegetaliana.buscar(@cerveza).calculo_co2).to eq(6.4)
    expect(@listaVegetaliana.buscar(@nuez).calculo_co2_anual +  @listaVegetaliana.buscar(@cerveza).calculo_co2_anual).to eq(2336.0)
    expect((@listaVegetaliana.buscar(@nuez).calculo_terreno +  @listaVegetaliana.buscar(@cerveza).calculo_terreno).round(2)).to eq(28.8)



  end

  it " Dieta Carnivora " do

    @listaCarnivora = List.new()
    @listaCarnivora.insertar_head(@pollo)
    @listaCarnivora.insertar_tail(@nuez)

    expect(@listaCarnivora.tamaño).not_to eq(0)
    expect(@listaCarnivora.head.valor).to eq(@pollo)
    expect(@listaCarnivora.tail.valor).to eq(@nuez)

    expect(@listaCarnivora.buscar(@pollo).calculo_energetico + @listaCarnivora.buscar(@nuez).calculo_energetico).to be >= 2300.0

    expect(@listaCarnivora.buscar(@pollo).calculo_co2 +  @listaCarnivora.buscar(@nuez).calculo_co2).to eq(80.7)
    expect(@listaCarnivora.buscar(@pollo).calculo_co2_anual +  @listaCarnivora.buscar(@nuez).calculo_co2_anual).to eq(29455.5)
    expect((@listaCarnivora.buscar(@pollo).calculo_terreno +  @listaCarnivora.buscar(@nuez).calculo_terreno).round(2)).to eq(123.1)



  end

end


  #------------------------------------------------------------------------ POO: Herencia. Módulos. ----------------------------------------------------#
RSpec.describe "Practica8" do

  before :each do

    @lista = List.new()
    @menu = Menu.new("Cafe con leche")
    @herencia = Menu_herencia.new("Cafe con leche")
    
    @vaca = Comida.new("Vaca", 21.1, 0.0, 3.1, 50.0, 164.0, 6)
    @cordero = Comida.new("Cordero", 18.0, 0.0, 17.0, 20.0, 185.0, 0.0)
    @camaron = Comida.new("Camaron", 17.6, 1.5, 0.6, 18.0, 2.0, 0.0)
    @chocolate = Comida.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4, 3)
    @salmon = Comida.new("Salmon", 19.9, 0.0, 13.6, 6.0, 3.7, 0.0)
    @cerdo = Comida.new("Cerdo", 21.5, 0.0, 6.3, 7.6, 11.0, 0.0)
    @pollo = Comida.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1, 0.0)
    @queso = Comida.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0, 0.0)
    @cerveza = Comida.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22, 21)
    @leche = Comida.new("Leche", 3.3, 4.8, 3.2, 3.2, 8.9, 1)
    @huevos = Comida.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7, 0)
    @cafe = Comida.new("Cafe", 0.1, 0.0, 0.0, 0.4, 0.3, 2)
    @lentejas = Comida.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4, 3)
    @nuez = Comida.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9, 3)
  end

  it "Modulo Comparable" do
    expect(@vaca > @cordero).to eq(true)
    expect(@vaca <= @cordero).to eq(false)
    expect(@vaca == @cordero).to eq(false)
    expect(@vaca >= @cordero).to eq(true)

  end

  it "Modulo Enumerable" do

    @lista.insertar_head(@cordero)
    @lista.insertar_tail(@vaca)
    expect(@lista.max).to eq(@vaca)
    expect(@lista.min).to eq(@cordero)
    expect(@lista.sort).to eq([@cordero,@vaca])
    expect(@lista.collect{|x| x.sacar_nombre}).to eq(["Cordero", "Vaca"])
    expect(@lista.select{|x| x.sacar_nombre == "Vaca"}).to eq([@vaca])
  end

  it "Menu Dieta Primeras Pruebas" do
    expect(@menu.añadir_comida(@cafe))
    expect(@menu.añadir_comida(@leche))
    expect(@menu.name).to eq("Cafe con leche")
    expect(@menu.calcular_proteinas).to eq(3.4)
    expect(@menu.calcular_gramos).to eq(300)

    expect(@menu.porcentaje_proteinas).to eq(1.13)
    expect(@menu.porcentaje_lipidos).to eq(1.07)
    expect(@menu.porcentaje_carbon).to eq(1.6)

    expect(@menu.calorico_total).to eq(11.4)
    expect(@menu.to_s).to eq("Nombre: Cafe Proteinas: 0.1 Lipidos: 0.0 Carbohidratos: 0.0Nombre: Leche Proteinas: 3.3 Lipidos: 3.2 Carbohidratos: 4.8")



  end

    it "Herencia" do

      expect(@herencia.añadir_comida(@cafe))
      expect(@herencia.añadir_comida(@leche))
      expect(@herencia.name).to eq("Cafe con leche")
      expect(@herencia.valor_total_co2).to eq(3.6)
      expect(@herencia.estimacion_m2).to eq(9.2)
      expect(@herencia.eficiencia).to eq(92.53)

    end

    it " Comparable Menu " do
      expect(@herencia == @menu).to eq(true)
      expect(@herencia < @menu).to eq(false)
    end


    it "Menu español vs Vasco" do

      @menuES = Menu_herencia.new("Cordero al horno de primero y postre de chocolate")
      @menuES.añadir_comida(@cordero)
      expect(@menuES.añadir_comida(@chocolate))
      expect(@menuES.eficiencia).to eq(201.85)


      @menuVAS = Menu_herencia.new("Tapa de queso con carne de cerdo")
      @menuVAS.añadir_comida(@queso)
      @menuVAS.añadir_comida(@cerdo)
      expect(@menuVAS.eficiencia).to eq(52.0)


      expect(@menuES == @menuVAS).to eq(false)
      expect(@menuES.eficiencia < @menuVAS.eficiencia).to eq(false)
      expect(@menuES.calorico_total < @menuVAS.calorico_total).to eq(false)



      # @listaplato = List.new()
      # @listaplato.insertar_head(@menuES)
      # @listaplato.insertar_tail(@menuVAS)
      #
      # expect(@listaplato.max).to eq(@cordero)



    end







end
