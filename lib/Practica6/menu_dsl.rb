class Menu_DSL

  attr_accessor :name, :proteins, :carbohydrate, :lipids, :pproteins, :pcarbohydrate, :plipids, :contamination, :land, :ration



  def initialize (peter)

      @plato = List.new()


  end

  if block_given?
    if block.arity == 1
      yield self
    else
      instance_eval(&block)
    end
  end
end


  def to_s
    output = "Plato"
    @plato.each do |i|
      output << "\n #{i[:descripcion]}"
      output << "\n #{i[:proteinas]}"
      output << "\n #{i[:carbohidratos]}"
      output << "\n #{i[:lipidos]}"
      output << "\n #{i[:contaminacion]}"
      output << "\n #{i[:terreno]}"
      output << "\n #{i[:racion]}"
      output << "\n #{i[:precio]}"
    end

  end
