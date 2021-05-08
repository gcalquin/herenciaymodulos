module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Aninmal
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Aninmal
end

class Mamifero < Aninmal
end

class Insecto < Aninmal
end

class Pinguino < Ave
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Carnivoro
end

class Pato < Ave
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end


class Perro < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Vaca  < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Mosca < Insecto
    include Habilidades::Volador
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Abeja  < Insecto
    include Habilidades::Volador
    include Alimentacion::Carnivoro
end

puts "Ejemplos"
abeja = Abeja.new("Maya")
puts "Soy una abeja, Me llamo #{abeja.nombre},  #{abeja.comer} y ademas #{abeja.volar}"
