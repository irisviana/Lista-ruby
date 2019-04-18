class Questao4


  def recerber_QuantidadeDias (quantidadeDias)

     $quantidadeDias=quantidadeDias

  end
  def receber_QuilometragemTotal (quilometragemTotal)

    $quilometragemTotal=quilometragemTotal

  end

  def calcular_ValorTotal ()
    valorPago=$quantidadeDias * 90
    quilometrosGanho=100 * $quantidadeDias

    if $quilometragemTotal> quilometrosGanho
      kmPago=($quilometragemTotal - quilometrosGanho) * 12
      valorPago+=kmPago

    end

    mostrarValorPago (valorPago)
  end

  def mostrarValorPago (valorPago)
    puts format("%.2f",valorPago)
  end



end
Questao4.new.recerber_QuantidadeDias (1)
Questao4.new.receber_QuilometragemTotal(120)
Questao4.new.calcular_ValorTotal()