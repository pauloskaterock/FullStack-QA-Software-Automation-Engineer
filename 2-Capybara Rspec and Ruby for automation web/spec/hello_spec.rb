describe ' meu primeiro script' , :hello do

    # before(:each) do
    #     page.current_window.resize_to(1220, 800)


    # end

    # it 'visitar a pagina' do
    #         puts "visitando a pagina"
    #         visit "/"
    #         puts page.title

    # end
    it 'visitar a pagina' do
        puts "visitando a pagina"
        visit "/"
        expect(page.title).to eql "Training Wheels Protocol"

    end



end