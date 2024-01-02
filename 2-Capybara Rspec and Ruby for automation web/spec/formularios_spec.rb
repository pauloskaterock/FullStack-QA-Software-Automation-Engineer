
#PREENCHENDO FORMULARIOS
#VALIDANDO NOTIFICAÇÕES


describe 'Login' do

    
    it 'Login com sucesso' do
        
        visit "/login"

        #fill_in 'username' ,with: 'stark'
        fill_in 'userId' ,with: 'stark'
        fill_in 'password' ,with: 'jarvis!'

        click_button 'Login'

       puts find('#flash').visible? #('#flash) é o valor da mensagem  Olá, Tony Stark. Você acessou a área logada! 

       #puts find('#flash').text #traz a mensagem 

    expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

end



end