require './person.rb'
class Teacher < Person
    attr_accessor :specialization
    def initialize(name = 'unknown', age, specialization, parent_permission: true)
        super(name, age, parent_permission: true)
        @specialization = specialization
    end

    def can_use_services?
        return true
    end
end