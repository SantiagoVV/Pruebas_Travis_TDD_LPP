require_relative "comida.rb"

Node = Struct.new(:valor, :next, :prev)


class List

include Enumerable

  attr_accessor :head, :tail, :tamaño, :actual

  def initialize()

    @head = nil
    @tail = nil
    @tamaño = 0
  end



  def insertar_head(valor)

    nodo = Node.new(valor,nil,nil)
    if @head.nil?

      @head =  @tail = nodo


    else

      @head.next = nodo
      nodo.prev = @head
      @head = nodo

    end
    @tamaño = @tamaño +1
  end


  def insertar_tail(valor)

    nodo = Node.new(valor,nil,nil)
    if @head.nil?
      @head =  @tail = nodo


    else
      @tail.prev = nodo
      nodo.next = @tail
      @tail = nodo

    end
    @tamaño = @tamaño +1
  end


  def extraer_head

    unless @head.nil?
        aux = @head
        @head = @head.next

        if @head.nil?
          @tail = nil
        else
          @head.prev = nil

        end
        @tamaño = @tamaño -1
        aux.next = nil
        aux
      end

  end


  def extraer_tail

    unless @tail.nil?
        aux = @tail
        @tail = @tail.prev

        if @tail.nil?
          @head = nil
        else
          @tail.next = nil
        end
        @tamaño = @tamaño -1

        aux.prev = nil

      end
  end

  def vacia
    @head.nil?
  end

  def buscar(valor)

    aux = @head.next
    if(@head.valor == valor)
      @head.valor
    elsif (@tail.valor == valor)
      @tail.valor


    end
    #
    # aux = @tail
    #
    # while aux != nil && aux != algo
    #   aux = aux.next
    # end
    # @head.valor""
  end

  def each



    yield @head.valor
    yield @tail.valor



    end





  def tamaño
    @tamaño
  end

end
