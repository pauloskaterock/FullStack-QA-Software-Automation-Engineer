class Avenger
    attr_accessor:list


  def initialize 
    self.list = []

  end

   def 
   put(avenger)
  self.list.push(avenger)
  end
end

describe  Avenger do
    
  #cenario tdd desenvolvimento guiado por testes
    it 'deve adicionar um vingador' do 

       hq = Avenger.new
       hq.put('spiderman') 
       expect(hq.list).to eql ['spiderman']
    end
end 