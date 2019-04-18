class Questao1

  def receberTempProva1 (tempoProva1)
    $tempoProva1=tempoProva1
  end

  def receberTempProva2 (tempoProva2)
    $tempoProva2=tempoProva2
  end

  def receberTempProva3 (tempoProva3)
    $tempoProva3=tempoProva3
  end

  def receberTempProva4 (tempoProva4)
    $tempoProva4=tempoProva4
  end

  def receberTempProva5 (tempoProva5)
    $tempoProva5=tempoProva5
  end

  def calcularTempo()
    tempoMedio=($tempoProva1.to_i + $tempoProva2.to_i + $tempoProva3.to_i + $tempoProva4.to_i + $tempoProva5.to_i)/5
    segundos=(tempoMedio*100).remainder(60)

    minutos=((tempoMedio*100).div(60)).remainder(60)

    horas=((tempoMedio*100).div(60)).div(60)

    mostrarResultado tempoMedio,horas,minutos,segundos

  end

  def mostrarResultado (tempoMedio,horas,minutos,segundos)
    puts tempoMedio,horas,minutos,segundos

  end
end
Questao1.new.receberTempProva1(60)
Questao1.new.receberTempProva2(90)
Questao1.new.receberTempProva3(60)
Questao1.new.receberTempProva4(80)
Questao1.new.receberTempProva5(60)
Questao1.new.calcularTempo()
