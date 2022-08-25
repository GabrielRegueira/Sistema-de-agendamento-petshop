class Agendamento 

    def initialize(nome_pet, opcao)
        @nome_pet = nome_pet
        @opcao = opcao
    end
    def valor
       case opcao
       when 'banho'
        return 20
       when 'tosa'
        return 25
       when 'banho e tosa'
        return 45*0.85
       end 
    end

    def opcao
        @opcao
    end
end
