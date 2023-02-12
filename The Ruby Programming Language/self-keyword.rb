require_relative 'crud'

class Student
    include Crud
    attr_accessor :SAP_ID, :first_name,:last_name, :email, :password

    # Parametric Constructor
    def initialize(sap_id,first_name,last_name,email,password)
        @sap_id = sap_id
        @first_name = first_name
        @last_name = last_name
        @email = email
        @password = password
    end

    def to_s
        "SAP ID: #{@sap_id}\nFirst name: #{@first_name}\nLast Name: #{@last_name}\nEmail Address: #{@email}"
    end
end

stu1 = Student.new(500076106,"John","Cena","500076106@stu.upes.ac.in","@44U7xPz")
hashed_pwd = stu1.create_hash_digest(stu1.password)

puts stu1.to_s
puts "Password: #{hashed_pwd}"