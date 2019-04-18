class Questao3

  #Observação na questão 2
  def pegarInteiro ()

    lista=gets
    n1,n2=lista.split(' ')
    bolleano1=numeric n1
    bolleano2=numeric n2

    if (bolleano1==true && bolleano2==true)

      print n1+' '+n2+' '
      maiorCiclo=calcularMaiorCiclo n1.to_i,n2.to_i

      print maiorCiclo[0]
      pegarInteiro()

    end
  end

  def numeric n
    Float(n) != nil rescue false
  end


  def calcularMaiorCiclo n1,n2
    tamanhoConjunto=1
    contador=0
    lista=[]

    while (n1<=n2)
      aux2=n1

      while (aux2!= 1)

        if (aux2.even?.equal?true)
            aux2=aux2/2
        else
          aux2=(aux2*3)+1

        end

        tamanhoConjunto+=1
      end

      lista[contador]=[tamanhoConjunto]
      tamanhoConjunto=1
      contador+=1
      n1+=1
    end

    conjunto=lista.sort{|x,y|y <=> x}

    return conjunto[0]

  end

end
Questao3.new.pegarInteiro()