describe ' iframes ' do 

     describe 'iframe  ' ,:iframe_bom do
        before(:each) do 
            visit 'nice_iframe'


        end
        it 'adicionar ao carrinho' do
            within_frame('burgerId') do
              produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
              produto.find('a').click
              expect(find('#cart')).to have_content 'R$ 4,50'
            end
        end

     end

     describe 'iframe ruim' ,:iframe_ruim do
        before(:each) do 
            visit 'bad_iframe'


        end
        it 'seu carrinho esta vazio' do
            script = '$(".box-iframe").attr("id", "tempId");'
            page.execute_script(script)
            within_frame('tempId') do
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
            end
        end
    end

end