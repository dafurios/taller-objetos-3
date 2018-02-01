# Ejercicio 3: Herencia
# Se tiene la clase Vehicle que recibe como argumento un modelo y un año.
# El método engine_start enciende el vehículo

class Vehicle
  attr_accessor :model, :year, :start

   def initialize(model, year)
     @model = model
     @year = year
     @start = false
   end
   def engine_start
     @start = true
   end
end

# 1) Crear una clase Car que herede de Vehicle
# 2) El constructor de Car, además de heredar las propiedades
#  de Vehicle, debe incluir un contador de instancias de Car.
# 3) Crear un método de clase en Car que devuelva la cantidad de
# instancias.
#  4) El método engine_start heredado debe además imprimir
# 'El motor se ha encendido!'.
# 5) Instanciar 10 Cars.
# 6) Consultar la cantidad de instancias generadas de Car mediante el método
# de clase creado.

class Car < Vehicle
  @@contador_de_instancias = 0
  def initialize(model, year)
    super
    @@contador_de_instancias += 1
  end

  def self.mostrar_contador
    @@contador_de_instancias
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'

  end

end


# toyota = Car.new('Toyota', 2018)
# puts toyota.start
# toyota.engine_start
# puts toyota.start

marcas = ['Toyota', 'Chevrolet', 'Audi', 'Ferrari', 'SEAT', 'Citröen', 'Cherokee']

10.times do |i|
  car = Car.new(marcas.sample, rand(2000..2018))
  puts "Se ha creado un #{car.model} del año #{car.year}"
end

puts "Se ha instaciado #{Car.mostrar_contador} autos."
