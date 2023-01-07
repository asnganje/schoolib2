require './person.rb'
class Teacher < Person
    attr_accessor :specialization
    def initialize(age, name = 'unknown', specialization, parent_permission: true)
        super(age, name, parent_permission: true)
        @specialization = specialization
    end

    def can_use_services?
        return true
    end
end