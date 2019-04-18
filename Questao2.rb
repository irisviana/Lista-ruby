class Questao2

  #observação:Ao pedir um valor ao usuário,automaticamente esse valor e impresso no terminal,sem o uso de qualquer foma de print
  #foi questionado aa alguns dos monitóres e também pesquizado sobre,mas não foi encontado uma resposta para isso
  # penso que deve ser bug da plataforma,visto que mesmo criando um arquivo com apenas uma linha de código ,ex: var=gets,esse valor
  # é impresso sem o uso de print,essa observação vale também para as questões que pedem para o usuário digitar

  def pegarAlunos (quantAlunos)
    contador=0
    mediaGeral=0
    listaAlunos=[]

    while (contador<quantAlunos.to_i)

      matricula=gets.chomp
      nome=gets.chomp
      nota=gets.chomp
      listaAlunos.push({'numMatricula'=>matricula,'nome'=>nome,'nota'=>nota})
      mediaGeral+=nota.to_f
      contador+=1
    end

    mediaGeral=mediaGeral/quantAlunos.to_i
    calcularAlunosAcimaMedia listaAlunos,mediaGeral
  end


  def calcularAlunosAcimaMedia (listaAlunos,mediaGeral)

    alunosAcimaMedia=[]

    listaAlunos.each do |i|

      if i.values[2].to_f>mediaGeral.to_f
        alunosAcimaMedia.push(i)

      end


    end
    listaOrdenada=alunosAcimaMedia.sort_by{|k|[k.values[2],k.values[0]]}

    listaOrdenada.reverse.each do |j|

      print "matricula: "+j.values[0]+' '+"Nome: "+j.values[1]+' '+"Nota: "+ format("%.1f",j.values[2].to_s)
      puts ''

    end
    puts 'Media ='+' '+format("%.1f",mediaGeral)
  end


end
Questao2.new.pegarAlunos(3)