class Menu_DSL < Plato_DSL

  attr_accessor :nombre,:menu1, :menu2



  def initialize (nombre, &block)

      @nombre = nombre
      @menu1 = List.new()
      @menu2 = List.new()





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
    output = "Menu_1"
    @menu1.each do |i|
      output << "\n #{i[:descripcion]}"
      output << "\n #{i[:proteinas]}"
      output << "\n #{i[:carbohidratos]}"
      output << "\n #{i[:lipidos]}"
      output << "\n #{i[:contaminacion]}"
      output << "\n #{i[:terreno]}"
      output << "\n #{i[:racion]}"
      output << "\n #{i[:precio]}"
    end

    output = "Menu_2"
    @menu2.each do |i|
      output << "\n #{i[:descripcion]}"
      output << "\n #{i[:proteinas]}"
      output << "\n #{i[:carbohidratos]}"
      output << "\n #{i[:lipidos]}"
      output << "\n #{i[:contaminacion]}"
      output << "\n #{i[:terreno]}"
      output << "\n #{i[:racion]}"
      output << "\n #{i[:precio]}"
    end



    output

  end

  def menu1(name,options={})
    plato1 = name

    plato1 << "(#{options[:descripcion]})" if options[:descripcion]
    plato1 << "(#{options[:proteinas]})" if options[:proteinas]
    plato1 << "(#{options[:carbohidratos]})" if options[:carbohidratos]
    plato1 << "(#{options[:lipidos]})" if options[:lipidos]
    plato1 << "(#{options[:contaminacion]})" if options[:contaminacion]
    plato1 << "(#{options[:terreno]})" if options[:terreno]
    plato1 << "(#{options[:racion]})" if options[:racion]
    plato1 << "(#{options[:precio]})" if options[:precio]
    @menu1 << menu1

  end

  def menu2(name,options={})
    plato2 = name

    plato2 << "(#{options[:descripcion]})" if options[:descripcion]
    plato2 << "(#{options[:proteinas]})" if options[:proteinas]
    plato2 << "(#{options[:carbohidratos]})" if options[:carbohidratos]
    plato2 << "(#{options[:lipidos]})" if options[:lipidos]
    plato2 << "(#{options[:contaminacion]})" if options[:contaminacion]
    plato2 << "(#{options[:terreno]})" if options[:terreno]
    plato2 << "(#{options[:racion]})" if options[:racion]
    plato2 << "(#{options[:precio]})" if options[:precio]
    @menu2 << menu2

  end


end
