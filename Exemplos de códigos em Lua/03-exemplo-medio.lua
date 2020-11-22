--> na função imprime os números que representam a diagonal principal da matriz

matriz = {
  {1,23,56,37},
  {89,12,45,66},
  {34,90,67,5}
}

function diagonal(v)
  for i = 1,3 do
    for j = 1,4 do
      if(i == j) then
        print(v[i][j])
      end
    end
  end
end

diagonal(matriz)

