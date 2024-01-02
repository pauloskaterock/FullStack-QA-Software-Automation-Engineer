describe 'Caixas de seleção', :checkbox do
    before(:each) do  # ACESSA A PAGINA 
      visit '/checkboxes'
    end
  
    it 'marcando uma opção' do
      check('thor') #CHECK MARCA A OPÇÃO
    end
  
    it 'desmarcando uma opção' do
      uncheck('antman') # UNCHECK DESMARCA A OPÇÃO
    end 
  
    it 'marcando com find set true' do
      find('input[value=cap]').set(true)
    end
  
    it 'desmarcando com find set false' do
      find('input[value=guardians]').set(false)
    end
  end