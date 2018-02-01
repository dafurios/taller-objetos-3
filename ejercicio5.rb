# Se tienen las clases Rectangulo y Cuadrado cuyos constructores reciben las
# medidas de los lados correspondientes.

class Rectangulo
   def initialize(largo, ancho)
   @largo = largo
   @ancho = ancho
 end

 def lados
   puts "el Rectagulo tiene un largo de #{@largo} y un ancho de #{@ancho}"
 end

 def perimetro(largo, ancho)
   @largo = largo
   @ancho = ancho
   puts "el perimetro del Rectagulo es de #{(@largo+@ancho)*2}"
  end

 def area(largo, ancho)
   @largo = largo
   @ancho = ancho
   puts "el area del Rectangulo es de #{@largo * @ancho}"
 end

end

class Cuadrado
 def initialize(lado)
   @lado = lado
 end

 def lados
   puts "el Cuadrado tiene lados equilateros de #{@lado}"
 end

 def perimetro(lado)
   @lado = lado
   puts "el perimetro del Cuadrado es de #{(@lado)*4}"
  end

  def area(lado)
    @lado = lado

    puts "el area del Cuadrado es de #{@lado * @lado}"
  end

end

#instanciando
puts puts
a = Rectangulo.new(4, 3)
a.lados
a.perimetro(4, 3)
a.area(4, 3)

puts puts
b = Cuadrado.new(5)
b.lados
b.perimetro(5)
b.area(5)
puts puts
