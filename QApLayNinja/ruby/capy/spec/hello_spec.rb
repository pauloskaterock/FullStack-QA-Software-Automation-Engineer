describe "Ph skateRock" ,:hello  , :smoke do

    it 'visitar a pagina do paraiso' do

        visit '/'

        

       expect(page.title).to eql "Training Wheels Protocol"
       puts page.title
    end
end 


#