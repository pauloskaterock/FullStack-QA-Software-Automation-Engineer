#begin
#########devo tentar alguma coisa
#file = File.open('_/ola.txt')
#if file
 #   puts file.read
#end
#rescue Exception => e
########deve me retornar algum erro
#puts e
#end
def Soma(n1,n2)
 n1 + n2
rescue Exception => e
 puts 'erro ao executar a soma'
end

Soma ("10",5)