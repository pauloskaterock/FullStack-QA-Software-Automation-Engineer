describe 'select2'  , :select do

    describe('single') do

            before(:each) do

                visit '/apps/select2/single.html'

            end
        it 'seleciona o ator por nome' do
            find('.select2-selection--single').click
            sleep 5
            find('.select2-results__option' , text: 'Adam Sandler').click
            sleep 5

        end

        it 'Busca e clica no ator' do
            find('.select2-selection--single').click
            sleep 5
            find('.select2-search__field'). set 'Chris Rock'
            sleep 1
            find('.select2-results__option').click


        end
       
    end

    describe('multiple' ,:multiple) do

                before(:each) do

                    visit '/apps/select2/multi.html'

                end

            def selecione(ator)
                find('.select2-selection--multiple').click
                
                find('.select2-search__field'). set ator
                
                find('.select2-results__option').click
            end
            it 'Seleciona atores' do

                atores = ['Jin Carrey' , 'Owen Wilson' , 'Kevin James' ]
                atores.each do |a|

                    selecione(a)
                end
            end
    end

end