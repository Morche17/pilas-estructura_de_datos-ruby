require_relative 'src/nodo'

class Pila
  def initialize
    @cima = nil
  end

  def pushar(valor)
    nuevo_nodo = NodoPila.new(valor)
    nuevo_nodo.siguiente = @cima
    @cima = nuevo_nodo
  end

  def pop
    if @cima.nil?
      return nil
    else
      valor = @cima.valor
      @cima = @cima.siguiente
      return valor
    end
  end

  def cima
    if vacia?
      return "No hay nada en la cima"
    else
      # byebug
      puts @cima.valor
    end
  end

  def limpiar
    while @cima != nil
      nodo_actual = @cima
      @cima = @cima.siguiente
      nodo_actual.siguiente = nil
    end
  end

  def vacia?
    @cima.nil?
  end

  def tamaño
    cuenta = 0
    nodo_actual = @cima
    while nodo_actual != nil
      cuenta += 1
      nodo_actual = nodo_actual.siguiente
    end
    return cuenta
  end

  def ver
    if vacia?
      return "La pila está vacía"
    else
      nodo_actual = @cima
      cadena = "Pila (#{tamaño} elementos): "
      while nodo_actual != nil
        cadena += "#{nodo_actual.valor} "
        nodo_actual = nodo_actual.siguiente
      end
      return cadena
    end
  end
end

torre = Pila.new
torre.pushar(1)
torre.pushar(2)
puts torre.cima()
