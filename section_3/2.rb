class A
        attr_accessor :name
        def initialize
                @name = "Vishaag"
        end
end
class B
        @@name = "Jake"
end
instance_variable = A.new
puts "Instance Variable: " << instance_variable.name
puts "Class Variable: " << B.name

