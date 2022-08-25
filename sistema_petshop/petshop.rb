class Petshop

    def initialize
        @agendamentos = []
    end


    def valor 
        @valor = 0
        agendamentos.each do |ag|
            @valor += ag.valor
        end
        @valor
    end
    
    def agendamentos
        @agendamentos
    end

    def agendar(nome_pet, opcao)
        @agendamentos << Agendamento.new(nome_pet, opcao)  
    end
    
    def agendamentos_banho_e_tosa
        lista = []
        agendamentos.each do |ag|
           if ag.opcao == 'banho e tosa'
            lista << ag
           end
        end
        lista 

    end

    def agendamentos_tosa
        lista = []
        agendamentos.each do |ag|
            if ag.opcao == 'tosa'
                lista << ag
            end
        end
        lista 
    end

    def agendamentos_banho
        lista = []
        agendamentos.each do |ag|
            if ag.opcao == 'banho'
                lista << ag
            end
        end
        lista
    end
end

