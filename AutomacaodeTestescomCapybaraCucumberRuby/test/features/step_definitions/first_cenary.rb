When('I add {int} {float} {int}') do |int, float, int2|
    @sum = int + int2
    end
    
    Then('So the result is {int}') do |result|
        expect(@sum).to eq result
    end