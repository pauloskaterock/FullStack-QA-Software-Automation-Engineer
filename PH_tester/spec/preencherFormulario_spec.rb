describe 'Preenchendo formularios' do 


    it 'Formulario com sucesso' do 
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username' , with: 'stark' # FILL_IN PREENCHE O CAMPO USERNAME COM O NOME STARK
        fill_in 'password' , with: 'jarvis!' # PREENCHE O PASSWORD COM JARVIS!

        click_button 'Login' #CLICA NO BOTÃO LOGIN

        expect(find('#flash').visible?).to be true # FIND ENCONTRA O CAMPO FRASH(PRESENTE NO EMENTO HTML)E O VALIDA
       
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'#AQUI VALIDAMOS A MENSAGEM DE ACESSO
        
        # puts find('#flash').text AQUI NÓS IMPRIMIMOS O TEXTO DE VALIDAÇÃO 
    
    end

    it 'login incorreto' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'
    
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: '123456'
    
        click_button 'Login'
    
        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'Senha é invalida!'
        puts find('#flash').text
    end

    it 'login não cadastrado' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'
    
        fill_in 'userId', with: 'ph'
        fill_in 'password', with: '123'
    
        click_button 'Login'
    
        expect(find('#flash').visible?).to be true
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
        puts find('#flash').text
      end



end

