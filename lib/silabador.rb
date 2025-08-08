# frozen_string_literal: true

require_relative "silabador/version"

module Silabador
  class PtBr
    VOGAIS = %w[a e i o u á é í ó ú â ê ô ã õ à]
    DITONGOS = %w[ão õe ãe ei ai oi eu au ou iu ui]
    DIGRAFOS = %w[ch lh nh gu qu]

    def self.silabas(palavra)
      return [palavra] if palavra.strip.length <= 2

      palavra = palavra.downcase
      silabas = []
      i = 0
      atual = ""

      while i < palavra.length
        letra = palavra[i]
        proxima = palavra[i + 1]
        dupla = letra + (proxima || "")

        atual += letra

        if vogal?(letra)
          # Detecta ditongos
          if proxima && vogal?(proxima) && DITONGOS.include?(dupla)
            atual += proxima
            i += 1
          end

          # Verifica se depois vem consoante + vogal => possível fim de sílaba
          if palavra[i + 1] && !vogal?(palavra[i + 1]) && palavra[i + 2] && vogal?(palavra[i + 2])
            silabas << atual
            atual = ""
          elsif palavra[i + 1].nil?
            silabas << atual
            atual = ""
          end
        elsif DIGRAFOS.include?(dupla)
          atual += proxima
          i += 1
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
