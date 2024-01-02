Dado('que o usuario queira se logar') do
 login.load
  end
  
  Quando('ele digitar as credenciais corretas') do
    login.userLogin
  end
  
  Então('deve acessar o sistema') do
    @home = Homepage.new
    @home.checkLoginSuccessful
  end
  