class Carro
    attr_accessor :nome,:marca,:modelo

    def initialize (nome ,marca ,modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} esta pronto para iniciar o trajeto!"



end
civic = Carro.new ('Civic','honda','si')
civic.ligar

lancer = Carro.new ('Civic','honda','si')
lancer.ligar