describe 'tabelas'  , :tabelas do

    before(:each) do

     visit '/tables'

    end


    # it ' pega o tony stark na lista ' do
    #     expect(page).to have_content 'Robert Downey Jr'
    # end

    it ' Dve exibir o salario ' do

        atores = all('table tbody tr')

        stark = atores.detect {|ator| ator.text.include?('Robert Downey Jr')}
        expect(stark.text).to include '$ 10.000.000'
        
    end

    it ' Dve exibir o salario do Van diesel ' do

        diesel = find('table tbody tr' , text: '@vindiesel')
        expect(diesel).to have_content '$ 10.000.000'
        
    end

    it ' Dve exibir o filme velozes ' do

        diesel = find('table tbody tr' , text: '@vindiesel')
        movie = diesel.all('td')[2].text
        expect(movie).to eql 'Fast & Furious'
        
    end

    it ' Dve exibir o instagran do chris evans ' do

       evans =  find('table tbody tr' , text: 'Chris Evans')
       insta = evans.all('td')[4].text

       expect(insta).to eql '@teamcevans'
        
    end


    it ' Deve selecionar cris patt para remoção ' do

        prat =  find('table tbody tr' , text: 'Chris Pratt')
        prat.find('a' , text: 'delete').click
 
      msg = page.driver.browser.switch_to.alert.text
      expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
         
    end

    it ' Deve selecionar cris patt para edição ' do

        prat =  find('table tbody tr' , text: 'Chris Pratt')
        prat.find('a' , text: 'edit').click
 
      msg = page.driver.browser.switch_to.alert.text
      expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
         
    end

    



end