



describe 'meu primeiro script' do


    it "Visitar a WebPage"  do

        visit 'https://www.google.com'
        puts page.title #imprimi o titulo da pagina
        expect(title).to eql "Google"


    end



end