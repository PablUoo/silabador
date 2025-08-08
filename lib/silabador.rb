# frozen_string_literal: true

require_relative "silabador/version"

module Silabador
  class PtBr
    VOGAIS = %w[a e i o u á é í ó ú â ê ô ã õ à]

    def self.silabas(palavra)
      return [palavra] if palavra.length <= 2

      silabas = []
      atual = ""
      letras = palavra.downcase.chars

      letras.each_with_index do |letra, i|
        atual += letra
        proxima = letras[i + 1]
        depois = letras[i + 2]

        if vogal?(letra) && (!proxima || !vogal?(proxima))
          if proxima && !vogal?(proxima) && depois && vogal?(depois)
            silabas << atual
            atual = ""
          elsif proxima.nil?
            silabas << atual
          end
        end
      end

      silabas << atual unless atual.empty?
      silabas
    end

    def self.vogal?(letra)
      VOGAIS.include?(letra)
    end
  end
end
