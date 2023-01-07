require './person.rb'
class Student < Person
    attr_accessor :classroom
    def initialize(age, name = 'unknown', parent_permission: true, classroom)
        super(age, name, parent_permission: true)
        @classroom = classroom
    end

    def play_hooky
        return "¯\_(ツ)_/¯"
    end
end