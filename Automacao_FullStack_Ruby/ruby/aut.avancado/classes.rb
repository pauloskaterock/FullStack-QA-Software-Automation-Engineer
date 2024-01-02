class Conta
attr_accessor :saldo # attr_accessor cria um atributo

def deposita(valor)
    self.saldo # self usado para acessar o saldo

    puts 'depositando a quantia de ' + valor.to_s + 'reais.' # valor.to_s -converte para string
puts "depositando a quantia # {valor} reais." # interpolaçao de string faz a conversao automatico
end
end
c = Conta.new
c.saldo = (0.0)
c.deposita(100.00)

puts c.saldo