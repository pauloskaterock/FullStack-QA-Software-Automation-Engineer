describe ' Alerts JS' , :alerts do

    before(:each) do

        visit '/javascript_alerts'
   
    end

 
    it 'alerta' do
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql  'Isto é uma mensagem de alerta' 
        sleep 3

    end


    it 'sim confirma' do
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql  'E ai confirma?' 
        msg = page.driver.browser.switch_to.alert.accept

        expect(page).to have_content 'Mensagem confirmada'

    end


    it 'Não confirma' do
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql  'E ai confirma?' 
        msg = page.driver.browser.switch_to.alert.dismiss

        expect(page).to have_content 'Mensagem não confirmada'

    end


    it 'Prompt' , :prompt do
        accept_prompt(with:  'Paulo') do
            click_button 'Prompt'

            sleep 2
        end
            expect(page).to have_content 'Olá, Paulo'
            sleep 5
    end

    it 'Prompt' , :dismiss do
        accept_prompt(with:  '') do
            click_button 'Prompt'

            sleep 2
        end
            expect(page).to have_content 'Olá,'
            # expect(page).to has_content?("Olá, null")
            sleep 5
    end


end