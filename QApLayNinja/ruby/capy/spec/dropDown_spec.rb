describe 'caixa de opção' ,:dropdown do 
    it ' item especifico simples' do 
        visit 'dropdown'
        select('Loki', from: 'dropdown')
        sleep 3
    end 
    it 'item especifico' do

        visit 'dropdown'
        drop = find('.avenger-list')
        drop.find('option',text: 'Scott Lang').select_option
    end
    
    it 'qualquer item' ,:sample do
        visit 'dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end
end