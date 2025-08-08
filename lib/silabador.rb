# frozen_string_literal: true

require_relative "silabador/version"

module Silabador
  class PtBr
    VOGAIS = %w[a e i o u á é í ó ú â ê ô ã õ à]

    def self.silabas(palavra)
      return [palavra] if palavra.strip.length <= 2

      silabas = []
      atual = ""
      letras = palavra.downcase.chars

      i = 0
      while i < letras.length
        letra = letras[i]
        proxima = letras[i + 1]
        depois = letras[i + 2]

        atual += letra

        if vogal?(letra)
          if proxima.nil?
            silabas << atual
            atual = ""
          elsif !vogal?(proxima)
            if depois && vogal?(depois)
              silabas << atual
              atual = ""
            end
          end
        end

        i += 1
      end

      silabas << atual unless atual.empty?
      silabas
    end

    def self.vogal?(letra)
      VOGAIS.include?(letra.downcase)
    end
  end
end
