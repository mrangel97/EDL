--> imprime os valores x1 e x2 de uma equação do 2º grau
--> nesse exemplo, é usada uma função "closure" que é gerenciada pelo coletor de lixo(garbage collector) 

function addFunc(a)
   return function(b)
     return function(c)
       local delta = b^2 - 4 * a * c
       local x1 = (-b - math.sqrt(delta)) / (2 * a)
       local x2 = (-b + math.sqrt(delta)) / (2 * a)
       return x1,x2
     end
   end
end

n1 = 2
n2 = 4
n3 = -6

a = addFunc(n1)
b = a(n2)
print(b(n3))
