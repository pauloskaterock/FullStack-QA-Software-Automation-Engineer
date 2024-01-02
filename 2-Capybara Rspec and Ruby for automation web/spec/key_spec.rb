describe 'teclado' , :key  do
    before(:each) do
         visit '/key_presses'
    end

    it 'Enviando teclas' do

        teclas = %i[ tab escape space enter shift control alt]

        teclas.each do |t|
            find('#campo-id').send_keys t 
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
        end
    end


    it 'Enviando Letras' do

        letras = %w[ a d s p h d t i]

        letras.each do |l|
            find('#campo-id').send_keys l 
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
        end
    end



end