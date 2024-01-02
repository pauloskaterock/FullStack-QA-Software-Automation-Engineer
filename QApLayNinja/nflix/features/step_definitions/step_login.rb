Quando("eu faço login com {string} e {string}") do |email, password|
        
  @Login = LoginPage.new
  @Login.go
  @Login.email.set email
  @Login.password.set password
  @Login.sign_in_button
  
  
       # visit "/"
        # find("#emailId").set email  #encontrara o email
        # find("#passId").set password #encontrara a senha
        # click_button "Entrar" # clicara no botão para acessar
      
    
end
  
  Então("devo ser autenticado") do
       js_script = 'return window.localStorage.getItem("default_auth_token");'#comando inspecionado para nos voltar a validaçaõ do token
       #token = page.execute_script(js_script) # executa o comando
      expect(get_token.length).to be 147 # valida o comando para seber se returna 147 caracteres
  end
  
  Então("devo ver {string} na área logada") do |expect_name|

    
    #user = find(".sidebar-wrapper .user .info span") # user variavel ($(".sidebar-wrapper .user .info .span");)elemento encontrado na inspeção
    expect(sidebar.logged_user).to have_text expect_name #espera que a pagina contenha o texto e expect name
  end

  Então('não devo ser autenticado') do
    js_script = 'return window.localStorage.getItem("default_auth_token");'
    #token = page.execute_script(js_script)
    expect(get_token).to be nil
    
  end
  
  Então('devo ver a mensagem de alerta {string}') do |expect_message|
   
    #alert = find('.alert') # encontrar o alert o . ponto serve para busca por classe
    expect(@Login.alert).to eql expect_message
  end