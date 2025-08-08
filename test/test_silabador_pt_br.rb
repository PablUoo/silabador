# frozen_string_literal: true

require "minitest/autorun"
require "silabador_pt_br"

class SilabadorPtBrTest < Minitest::Test
  def test_silabas_basico
    assert_equal ["te", "le", "fo", "ne"], SilabadorPtBr::Silabador.silabas("telefone")
    assert_equal ["sa", "ú", "de"], SilabadorPtBr::Silabador.silabas("saúde")
    assert_equal ["a", "u", "to", "mó", "vel"], SilabadorPtBr::Silabador.silabas("automóvel")
    assert_equal ["oi"], SilabadorPtBr::Silabador.silabas("oi")
  end
end
