describe 'Scrip visitar a page e validar o titulo' do


    it "visitando o google" do

        visit "https://www.google.com"
        puts page.title

        expect(title).to eql "Google"
    end

end


# Script de automação simples onde visitamos a pagina do google e validamos o seu title
# utilizei Rspec, Cucumber, Ruby, Capybara
# Quality assurance Engineer
# PH skate rock >>>>>>>>>>>>>>
 