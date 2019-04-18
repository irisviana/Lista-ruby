class Questao5

    def pegarStrings string1,string2

      var1=ignorarAcentuacao string1
      var2=ignorarAcentuacao string2
      if var1==var2
         puts true

      else
        puts false
      end

    end

    def ignorarAcentuacao variavel

      string=variavel.gsub('?','')
      string=string.gsub('!','')
      string=string.gsub('.','')
      string=string.gsub(',','')
      string=string.gsub(' ','')
      string=string.upcase
      string=string.chars
      string=string.sort
      return string
    end

end


Questao5.new.pegarStrings('iriss!?', 'Siri')