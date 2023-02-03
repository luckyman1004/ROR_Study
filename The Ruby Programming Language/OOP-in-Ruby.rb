# Class Definition
class Student
    # Parametric Constructor
    def initialize(sap_id,first_name,last_name,email)
        @sap_id = sap_id
        @first_name = first_name
        @last_name = last_name
        @email = email
    end

    # Defining Getter and Setter
    def first_name=(name)
        @first_name = name
    end

    def first_name
        @first_name
    end

    # Symbolic way of defining Getters and Setters for an attribute
    attr_accessor :SAP_ID, :last_name, :email
end

# Instantiating Object of Class
stu1 = Student.new(500076106,"John","Cena","500076106@stu.upes.ac.in")
p stu1

stu1.first_name = "Anirudh"
puts stu1.first_name

stu1.last_name = "Jain"
puts stu1.last_name

stu2 = Student.new(500075193,"Jack","Sparrow","500075193@stu.upes.ac.in")
p stu2

print "#{stu1.object_id}\n#{stu2.object_id}\n"