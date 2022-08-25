require 'minitest/autorun'
require './sistema_petshop/petshop'
require './sistema_petshop/agendamento'

class TestPetshop < Minitest::Test
   
    def test_petshop_agendamento
        petshop = Petshop.new
        petshop.agendar('dog','banho')
        petshop.agendar('cat','tosa')
        petshop.agendar('dog1','banho e tosa')

        assert_equal 3, petshop.agendamentos.size
        assert_equal 1, petshop.agendamentos_banho.size
        assert_equal 1, petshop.agendamentos_tosa.size 
        assert_equal 1, petshop.agendamentos_banho_e_tosa.size
        assert_equal 83.25, petshop.valor

    end

end