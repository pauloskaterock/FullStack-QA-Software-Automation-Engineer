# begin 
#   #devo tentar alguma coisa
#   file = File.open('./ola')
#   if file
#     puts file.read
#   end
# rescue Exception => e 
#    #obter algum erro
#    puts e.message
#    puts e.backtrace
# end


def soma(n1, n2)
    n1 + n2 
rescue Exception => e 
    puts e.message
    puts 'parece que ha um erro em seu codigo'
end

(soma '10 ', 5)