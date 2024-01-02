describe 'ids dinamicos', :idsss do
    before(:each) do
      visit 'access'
    end
    # $ simbolo indica que (termina com)
    # ^ simbolo indica que (começa com)
    # * simbolo indica que (contem)

    it ' cadastros dinamicos' do
        find('input[id$=UsernameInput]').set 'ph'
        find('input[id^=PasswordInput').set '123456'
        find('a[id*=GetStartedButton').click


        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

        
    end
end


