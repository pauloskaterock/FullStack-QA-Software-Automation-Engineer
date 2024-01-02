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
describe 'Login 2', :login2 do
        before(:each) do
          visit '/login2'
        end
      
        it 'com data de nascimento' do
          find('#userId').set 'stark'
          find('#passId').set 'jarvis!'
      
          login_form = find('#login')
      
          case login_form.text
          when /Dia/
            find('#day').set '29'
          when /Mês/
            find('#month').set '05'
          when /Ano/
            find('#year').set '1970'
          end
      
          click_button 'Login'
          expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        end
end
      

