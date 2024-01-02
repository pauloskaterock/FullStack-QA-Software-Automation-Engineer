describe 'Upload de arquivos' , :upload do

    before(:each) do

        visit '/upload'

        @arquivo = Dir.pwd + '\spec\fixtures\arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/ruby.jpg'
   
    end


    it 'upload arquivos texto'  , :imagUplo do
        attach_file('file-upload' , @arquivo)
        click_button 'Upload'
        sleep 5
        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end


    it 'upload arquivos imagem' do
        attach_file('file-upload' , @imagem)
        click_button 'Upload'
       
       img =  find('#new-image')
       expect(img[:src]).to include '/uploads/ruby.jpg'
    end


    after(:each) do
        sleep 3

    end



end