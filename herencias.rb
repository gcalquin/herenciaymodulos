class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age +=1
    end

end


class Student < Person
    def Talk
        puts "Aqui es la clase de programacion con Ruby"
    end

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}"
    end
end

class Teacher < Person
    def Talk
        puts "Bienvenidos a la clase de programacion con Ruby"
    end

    def introduce
        puts "Hola almunos. Mi nombre es #{@first_name} #{@last_name}}"
    end
end

class Parent < Person
    def Talk
        puts "Aqui es la reunion de apoderados."
    end

    def introduce
        puts "Hola soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}}"
    end
end

s = Student.new("Gabriel", "Calquin", 42)
t = Student.new("Pepito", "Paga dopble", 52)
a = Student.new("Claudia", "Rojas", 72)

puts s.Talk
puts s.introduce

puts s.Talk
puts t.introduce

puts s.Talk
puts a.introduce