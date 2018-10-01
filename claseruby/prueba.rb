
#persona = {"nombre" => "Juan", "edad" => 26}

# puts persona.length
#cuenta la cantidad de posiciones en un hash

#puts persona.has_key?("estatura")
#me indica si existe una llave dentro de un hash

#puts persona.keys
#me permite saber cuantas llaves se puede asignar a un hash

#persona = {"nombre": "Juan", edad: 26 }

#puts persona[:nombre]
# me muestra el valor de nombre de la variable

#def cuadrado(numero)
#    return numero*numero
#end
#puts cuadrado(2)

#puts "ingresa un numero"
#mi_numero:gets.chomp.to_f
#puts "el cuadrado es: #{cuadrado(mi_numero) }"

#def hola_personas(*personas)
    
#    personas.each do |persona|
#    puts "Hola #{persona}"    
#    end
    
#end

#gente = ['jaime','Alberto','Pedro']
#hola_personas('jaime','Alberto','Pedro',*gente)

# El operador splat convierte todos los parametros que enviemos en un arreglo dentro del metodo


#def suma(numero_uno,numero_dos)
#    return numero_uno+numero_dos
#end

#def suma(numero_uno:0,numero_dos:0)
#    return numero_uno+numero_dos
#end
#puts suma(numero_uno:4,numero_uno:7)
#Keywords argument me permite bautizar los parametros de tal modo que se puedan enviar en cualquier orden
#puts suma(numero_dos:4)
#Los keywords argument tambien permiten inicializar variables, este valor inicial, el metodo lo utiliza si no especificamos ese parametro

class Persona   
    attr_accessor :nombre, :edad

   def initialize(nombre,edad)
        self.nombre = nombre
        self.edad = edad
   end
    def saludar
        puts "Hola"
    end
    
end
#---------------------------------------------------
class Alumno < Persona

    attr_accessor :codigo
    def estudiar
        puts "Estoy estudiando"
    end

    def saludar 
        super# va a ejecutar el metodo saludar de la clase padre
        puts "Profe"
    end

end



#persona_uno = Persona.new("Juan",50)
#persona_dos = Persona.new("Maria",35)   

#persona_uno.nombre = "Juan"
#persona_dos.nombre = "Maria"
#persona_dos.saludar#Hola
#puts persona_uno.nombre #Juan
#puts persona_dos.nombre #Maria
#puts "La edad de la persona es #{persona_uno.edad}"

alumno_uno = Alumno.new("jaimito",17)
alumno_uno.estudiar
alumno_uno.saludar
