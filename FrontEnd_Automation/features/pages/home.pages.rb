class Homepage < SitePrism::Page
    element :useName, :xpath, "/html/body/div[5]/div[3]/div/div/div[2]/div/div/div/div/div/a/div[2]"
    element :navBarHome, :id, "global-nav-search"
    
    element :myIcon, :id, "app-linkedin-bug-color-icon"

    def  loginSucess 
       expect(userName.text).to eql "Paulo Henrique dos Santos"
       expect(navBarHome.text).to eql "Minha rede"
       expect(myIcon.text).to eql "In"

    end

end