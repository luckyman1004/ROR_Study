# Creating/Defining Module

module Crud
    require 'bcrypt'

    def Crud.create_hash_digest(password)
        BCrypt::Password.create(password)
    end
    
    def Crud.verify_hash_digest(password)
        BCrypt::Password.new(password)
    end
    
    def Crud.create_secure_users(list_of_users)
        list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
        end
        list_of_users
    end

    def Crud.authenticate_user(uname, pwd, user_list)
        user_list.each do |record|
            if record[:username] == uname && verify_hash_digest(record[:password]) == pwd
                puts "<-:Record-Found:->"
                return record
            end
        end
        "INVALID CREDENTIALS"
    end
end