describe 'IDS Dinamicos' , :ID do

    before(:each) do

        visit '/access'
   
    end

    
    it 'Ids Dinamicos' do

        # find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'paulo'
        # find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set '123456'
        # find('#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block').click

        #Outra forma de validação

        # $ = termina com 
        # ^ = começa com 
        # * = contem

        find('input[id$=UsernameInput').set 'paulo'
        find('input[id^=PasswordInput').set '123456'
        find('a[id*=GetStartedButton').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end