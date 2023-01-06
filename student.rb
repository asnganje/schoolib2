require './person.rb'
class Student < Person
    attr_accessor :classroom
    def initialize(name = 'unknown', age, parent_permission: true, classroom)
        super(name, age, parent_permission: true)
        @classroom = classroom
    end

    def play_hooky
        return "¯\_(ツ)_/¯"
    end
end