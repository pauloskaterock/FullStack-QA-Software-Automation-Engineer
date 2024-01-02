Quando('eu somo {int} {float} {int}') do |int, float, int2|
   @soma = int + int2
    end
    
    Então('o resultado é {int}') do |resultado|
        expect(@soma).to eq resultado
    end