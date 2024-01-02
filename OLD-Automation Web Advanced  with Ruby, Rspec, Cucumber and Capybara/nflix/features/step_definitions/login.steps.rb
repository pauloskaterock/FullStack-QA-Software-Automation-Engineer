Quando('eu faço login com {string} e {string}') do |email, password|
    # visit "/"
    # find('#emailId').set email
    # find('#passlId').set password
    # click_button "Entrar"
    #@login = LoginPage.new
    @login.go
    @login.with(email, password)
  end
  
  Então('devo ser autenticado') do
    # js_script = 'return window.localStorage.getItem(default_auth_token);'
    # token = page.execute_script(js_script)
    expect(get_token.length).to be 147
  end
  
  Então('devo ver {string} na área logada') do |expect_name|
    #@sidebar = SideBarView.new
    expect(logget_user).to eql expect_name
    # user = find('.sidebar-wrapper .user .info span')
    # expect(user.text).to eql expect_name
  end

  Então('não devo ser autenticado') do
    # js_script = 'return window.localStorage.getItem(default_auth_token);'
    # token = page.execute_script(js_script)
    expect(get_token).to be nil
  end
  
  Então('devo ver a mensagem de alerta {string}') do |expect_message|
    @login = LoginPage.new
    expect(Login.Page).to eql expect_message
    # alert = find(' .alert')
    # expect(alert.text).to eql expect_message
  end