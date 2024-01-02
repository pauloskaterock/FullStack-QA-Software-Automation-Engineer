describe 'Drag and Drop', :drop do
    before(:each) do
      visit '/drag_and_drop'
    end
  
    it 'homem aranha percente ao time do stark' do
      stark = find('.team-stark .column')
      cap = find('.team-cap .column')
  
      spiderman = find('img[alt$=Aranha]')
      spiderman.drag_to stark  #DRAG_TO MOVE O SPIDERMAN PARA O STARK
  
      expect(stark).to have_css 'img[alt$=Aranha]' #VALIDAÇÃO SE CONTEM O CSS
      expect(cap).not_to have_css 'img[alt$=Aranha]'#VALIDAÇÃO SE NÃO CONTEM O CSS
    end
  end