class Conta
    attr_accessor :saldo # attr_accessor cria um atributo
   def initialize (nome) # initilaize e o construtor
self.saldo = (0.0)
self.nome = nome
   end

    def deposita(valor)
        self.saldo # self usado para acessar o saldo
    
        puts 'depositando a quantia de ' + valor.to_s + 'reais.' # valor.to_s -converte para string
    puts "depositando a quantia # {valor} reais # {self.nome}" # interpolaçao de string faz a conversao automatico
    end
    end
    c = Conta.new ('phskaterock')
    
    c.deposita(100.00)
    puts c.saldo

    c.deposita(10.00)
    puts c.saldo