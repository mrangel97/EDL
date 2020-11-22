--> nesse exemplo, é explicado como é a funcionalidade Coroutines

function duplica(a)
   return 2*a
end

function triplica(a)
   return 3*a
end

function quadruplica(a)
   return 4*a
end
     
co = coroutine.create(function (b)
        print("O número 2 será multiplicado por 2")
        m = duplica(b)
        print("Duplica",m)
        local c = coroutine.yield("Pausa",b)
        print("Continua a partir daqui. O número 4 será multiplicado por 3")
        t = triplica(c)
        print("Triplica",t)
        local d = coroutine.yield("Pausa",c)
        print("Continua por aqui. O número 6 será multiplicado por 4")
        q = quadruplica(d)
        print("Quadruplica",q)
        return "Acabou a co-rotina. Com isso, a última chamada não será executada como mostrada abaixo:"
     end)
            
print(coroutine.resume(co,2))
print(coroutine.resume(co,4))
print(coroutine.resume(co,6))
print(coroutine.resume(co,8))
