class Conta 
    attr_accessor :saldo ,:mensagem

    def initialize(saldo)
        self.saldo = saldo
    end
    def saca(valor,maximo , taxa)
        if (valor > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque :('
        elsif (valor > maximo)
          self.mensagem = 'Limite maximo por saque é de R$ '+ maximo.to_s
        else
          self.saldo -= valor + taxa
        end
    end
end





class ContaCorrente < Conta
   def saca(valor , maximo = 700 , taxa =5.00)
       super
   end



end



class ContaPoupanca < Conta
    def saca(valor , maximo = 500 , taxa =2.00)
        super

    end
    
end