require_relative "comida.rb"

Node = Struct.new(:valor, :next, :prev)


class List


  include Enumerable

  attr_accessor :head, :tail, :tamaño

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
  end


end
