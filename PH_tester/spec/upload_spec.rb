# upload de arquivos

describe "Upload", :upload do
    before(:each) do
      visit "/upload"  # VISITA O SITE A FAZER O UPLOAD
      @documento = Dir.pwd + "/spec/features/documento.txt"  # @arquivo é uma variavel >>> 
      @imagem = Dir.pwd + "/spec/features/imagem.png"    # Dir.pwd é o caminho do arquivo >>>
    end
  
    it "upload com arquivo texto" do
      attach_file("file-upload", @documento) #  AQUI NÓS FAZEMOS O UPLOAD
      click_button "Upload"
  
      div_documento = find("#uploaded-file")
      expect(div_documento.text).to eql "documento.txt" # VERIFICA SE FOI FEITO O UPLOAD DO ARQEUIVO
    end
  
    it "upload de imagem", :upload_imagem do
      attach_file("file-upload", @imagem)
      click_button "Upload"
  
      img = find("#new-image")
      expect(img[:src]).to include "/uploads/imagem.png" # verifica se a imagem foi feita o upload
    end
  end