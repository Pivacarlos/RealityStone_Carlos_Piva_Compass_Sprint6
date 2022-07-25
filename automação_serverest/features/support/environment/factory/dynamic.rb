require 'faker'

class GenCadastro < SitePrism::Page
    def generate_user_name
        Faker::Internet.user_name
    end
    def generate_email
        Faker::Internet.email
    end
    def generate_password
        Faker::Internet.password
    end
end