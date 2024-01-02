describe 'caixas de seleção ' ,:checkboxx do 

    before(:each) do 
     visit 'checkboxes'
    end



    it 'marcando uma opção' do
        check('thor')
    end

    it ' desmarcando uma poção' do
        uncheck('antman')
    end

    it 'marcando com find set true' do 
        find('input[value=cap]').set true
    end

    it 'desmarcando com set find true' do
        find('input[value=guardians]').set false
    end

    after(:each) do 
        sleep 3
    end
end