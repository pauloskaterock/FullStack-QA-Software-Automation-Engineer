# ruby é uma linguagem orientada a objetos

# class Carro

#     attr_accessor :nome

#     def ligar
#      puts " carro ira ligar"
#     end
# end
# civic = Carro.new
# civic.nome ='Civic'
# puts civic.nome
# civic.ligar
# classes #############################################

#orientação a objetos
# class Conta
#      attr_accessor :saldo
#        def deposita(valor)
#           self.saldo+=valor
#           puts "depositando a quantia #{valor} reais"
#         end
# end
# c= Conta.new
# c.saldo =0.0
# c.deposita(100.0)
# puts c.

#construtores ######################################
class Conta 
    attr_accessor :saldo , :nome
    def initialize(nome)
        self.saldo = 1000.0
        self.nome = nome
    end
    def retira(valor)
        self.saldo-= valor
        puts "retirando #{valor} na conta de #{nome}"
    end
end

c = Conta.new ('PH')
c.retira(100.0)
puts c.saldo
c.retira(10.00)
puts c.saldo
puts c.nome