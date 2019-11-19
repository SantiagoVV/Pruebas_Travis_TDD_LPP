require_relative "comida.rb"

Node = Struct.new(:value, :next, :prev)


class List


  attr_accesor :head, :tail, :posicion, :tamaño

  def initialize()

    @head = nil
    @tail = nil
    @tamaño = 0

  end


  def insertar_head(valor)

    nodo = Node.new(valor)

    if @head.nil?

      @head =  @tail = nodo
      @tamaño = @tamaño +1

    else

      @head.next = nodo
      nodo.prev = @head
      @head = nodo
      @tamaño = @tamaño +1

  end

  def insertar_tail(valor)

    nodo = Node.new(valor)

    if @head.nil?

      @head =  @tail = nodo
      @tamaño = @tamaño +1

    else

      @tail.prev = nodo
      nodo.next = @tail
      @tail = nodo
      @tamaño = @tamaño +1

  end


https://github.com/ULL-ESIT-LPP-1819/tdd-alu0100943849/blob/master/spec/Nutricional_label_spec.rb


end
