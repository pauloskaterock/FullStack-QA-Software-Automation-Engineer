describe 'caixa de seleção'  , :checkbox do

    before(:each) do

     visit '/checkboxes'

    end

    it ' marcando uma opção'  do
        check('thor')
    end

    it ' desmarcando uma opção'  do
        uncheck('antman')
    end
    it 'marcando com set find true' do
        find('input[value=cap]').set(true)
     end

    it 'desmarcando com set find false' do
        find('input[value=guardians]').set(false)
    end

    after(:each) do
        sleep 3

    end


end