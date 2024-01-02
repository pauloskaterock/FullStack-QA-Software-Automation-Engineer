describe 'Login2' , :login3 do

    before(:each) do

        visit '/access'
   
    end

    
    it 'Login3 Escopo' do
        
        # login_form = find('#login')  
        # login_form.find('input[name=username]').set 'stark'
        # login_form.find('input[name=password]').set 'jarvis!'
       
        
        within('#login') do
            
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'

        end

        

       
        
       # click_button 'Entrar'

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'


    end
    it 'cadastro com sucesso 3' do
        
      
       
        
        within('#signup') do
            
            find('input[name=username]').set 'stark'
            find('input[name=password]').set '123456'
            click_link 'Criar Conta'

        end

        

       
      

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'


    end
end



