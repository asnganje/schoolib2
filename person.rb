require './nameable.rb'
require './decorator.rb'
require './trimmer_decorator.rb'
require './capitalize_decorator.rb'

class Person
    attr_accessor :name, :age
    attr_reader :id
    def initialize(age, name = 'unknown', parent_permission: true)
        @id = Random.rand(1..1000)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end
    
    def correct_name
        @name
    end

    private
    def is_of_age?
        @age >= 18
    end

    def can_use_services?
        is_of_age? || @parent_permission
    end

    def add_rental(person, date)
        Rental.new(person, date, self)
    end
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.correct_name