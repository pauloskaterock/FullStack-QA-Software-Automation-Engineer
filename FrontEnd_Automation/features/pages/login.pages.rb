class Loginpage < SitePrism::Page

    set_url ''
    element :emailField, :id , "session_key"
    element :passwordField, :id , "session_password"
    #element :loginButton, :xpath, "//button[@class= 'sign-in-form_submit-button']"

    #element :loginButton, :xpath, "//*[@id="main-content"]/section[1]/div/form[1]/div[2]/button"
    
    element :loginButton, :xpath, "/html/body/main/section[1]/div/div/form[1]/div[2]/button"

    # /html/body/main/section[1]/div/div/form[1]/div[2]/button
    # //*[@id="main-content"]/section[1]/div/div/form[1]/div[2]/button

    def  userLogin 
        emailField.set "teste@test.com"
        passwordField.set "546123"
        sleep 2
        loginButton.click

    end

end