describe 'iframes'  do

   

    describe 'bom'  , :iframebom  do

        before(:each) do

            visit '/nice_iframe'
       
        end
    
        it 'iframe bom' do

            within_frame('burgerId') do

                produto = find('.menu-item-info-box' , text: 'REFRIGERANTE')

                produto.find('a').click
                expect(find('#cart')).to have_content 'R$ 4,50'
                sleep 5



            end

        
        end

    end

    it 'iframe ruim' ,  :iframeruim do

        
        before(:each) do

            visit '/bad_iframe'
       
        end

        it ' o carrinho deve estar vazio' do 

            script = '$(".box-iframe").attr("id", "tempId");'
            page.execute_script(script)

            within_frame('.box-iframe') do

                expect(find('#cart')).to have_content 'Seu carrinho esta vazio!'


            end




        end

    
    end


end