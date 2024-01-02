describe ' drag and drop' ,:drop do 
    before(:each) do
      visit 'drag_and_drop'
    end
   
    it 'homem aranha pertence ao time strak' do

      stark = find('.team-stark .column')
      cap = find('.team-cap .column')

      spiderman = find('img[alt$=Aranha]')
      spiderman.drag_to stark

      expect(stark).to have_css 'img[alt$=Aranha]'
      expect(cap).not_to have0_css 'img[alt$=Aranha]'
   end
end


