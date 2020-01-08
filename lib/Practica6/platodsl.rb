
class Plato_DSL

  attr_accessor :nombre,:plato1, :plato2



  def initialize (nombre, &block)

      @nombre = nombre
      @plato1 = []
      @plato2 = []


  if block_given?
    if block.arity == 1
      yield self
    else
      instance_eval(&block)
    end
  end
end


  def to_s

    output = @nombre
    output << "\n"
    output << "---------------------------------------------------------------------------------------------------------------------------------------\n"
    output << "Plato_1 || Proteinas || Carbohidratos || Lipidos || Contaminacion || Terreno || Racion || Precio || Valor nutricional || Valor ambiental "
    @plato1.each do |i|
      output << "\n #{i[:descripcion]}         "
      output << " #{i[:proteinas]}           "
      output << " #{i[:carbohidratos]}         "
      output << " #{i[:lipidos]}          "
      output << "#{i[:contaminacion]}        "
      output << " #{i[:terreno]}     "
      output << " #{i[:racion]}       "
      output << " #{i[:precio]}       "
      @v_nutricionales1 = [i[:proteinas],i[:carbohidratos],i[:lipidos]]
      @v_ambientales1 = [i[:contaminacion],i[:terreno],i[:carbohidratos]]
      output << "  #{@v_nutricionales1.inject{|i,sum| sum+i}}"
      output << "  #{@v_ambientales1.inject{|i,sum| sum+i}}"
    end


    @plato2.each do |i|
      output << "\n #{i[:descripcion]}      "
      output << " #{i[:proteinas]}           "
      output << " #{i[:carbohidratos]}         "
      output << " #{i[:lipidos]}         "
      output << " #{i[:contaminacion]}        "
      output << " #{i[:terreno]}     "
      output << " #{i[:racion]}       "
      output << " #{i[:precio]}       "
      @v_nutricionales2 = [i[:proteinas],i[:carbohidratos],i[:lipidos]]
      @v_ambientales2 = [i[:contaminacion],i[:terreno],i[:carbohidratos]]
      output << "  #{@v_nutricionales2.inject{|i,sum| sum+i}}              "
      output << "  #{@v_ambientales2.inject{|i,sum| sum+i}}"
    end

    output

  end


  def name(aux)
    peter = aux
  end

  def plato1(name,options={})
    aux = name

    aux << "(#{options[:descripcion]})" if options[:descripcion]
    aux << "(#{options[:proteinas]})" if options[:proteinas]
    aux << "(#{options[:carbohidratos]})" if options[:carbohidratos]
    aux << "(#{options[:lipidos]})" if options[:lipidos]
    aux << "(#{options[:contaminacion]})" if options[:contaminacion]
    aux << "(#{options[:terreno]})" if options[:terreno]
    aux << "(#{options[:racion]})" if options[:racion]
    aux << "(#{options[:precio]})" if options[:precio]

    @plato1 << aux

  end

  def plato2(name,options={})
    algo = name

    algo << "(#{options[:descripcion]})" if options[:descripcion]
    algo << "(#{options[:proteinas]})" if options[:proteinas]
    algo << "(#{options[:carbohidratos]})" if options[:carbohidratos]
    algo << "(#{options[:lipidos]})" if options[:lipidos]
    algo << "(#{options[:contaminacion]})" if options[:contaminacion]
    algo << "(#{options[:terreno]})" if options[:terreno]
    algo << "(#{options[:racion]})" if options[:racion]
    algo << "(#{options[:precio]})" if options[:precio]

    @plato2 << algo

  end


end
