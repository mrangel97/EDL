-->preenche uma lista com os números que são pares de 0 a 10
a = {}
for i = 0,10 do
   if(i % 2 == 0) then
     a[i] = i
     print(a[i])
   end
end
