class Loginpage
    include Capybara::DSL
    def go
        visit "/"
    end

    def email
        find("input[name=email]")
    end
    def password
        find("input[name=password]")
    end
    def sign_in_button
        click_button "Entrar"

    end    
    def alert
        find(".alert").text
    end
end