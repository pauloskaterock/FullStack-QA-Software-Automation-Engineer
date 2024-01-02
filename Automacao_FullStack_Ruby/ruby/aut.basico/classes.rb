# ruby linguagekm orientada a objetos 
# tudo sao objetos 
#classes forma de organizar açoes e atributos
# classes possui atributos e metodos caracteristicas e acoes 

# a classe carro possui(marca,cor,tioi,portas etc...)
#  a classe carro possui metodos ligar,buzinar,


class Carro
    attr_accessor :nome

def ligar # def metodo

    puts 'o carro esta pronto para ligar'
end
end
civic = Carro.new
civic.nome ='civic'

puts civic.nome
civic.ligar


