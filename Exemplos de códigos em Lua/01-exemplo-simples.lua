--> diferenciar uma variável local de uma variável global
x = 20
do
  local x = x
  print(x)
  x = x*2
  do
    local x = x + 2
    print(x)
  end
  print(x)
end
print(x)

