# frozen_string_literal: true

require "minitest/autorun"
require "silabador"

class SilabadorTest < Minitest::Test
  def test_silabas_basico
    assert_equal ["te", "le", "fo", "ne"], Silabador::PtBr.silabas("telefone")
    assert_equal ["sa", "ú", "de"], Silabador::PtBr.silabas("saúde")
    assert_equal ["a", "u", "to", "mó", "vel"], Silabador::PtBr.silabas("automóvel")
    assert_equal ["oi"], Silabador::PtBr.silabas("oi")
  end
end
