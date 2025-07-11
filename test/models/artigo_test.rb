require "test_helper"

class ArtigoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # test/models/artigo_test.rb
  require "test_helper"

  class ArtigoTest < ActiveSupport::TestCase
    test "não deve salvar artigo sem título" do
      # Precisamos de um usuário para criar um artigo válido
      user = User.new(email: 'test@example.com', password: 'password')
      artigo = Artigo.new(content: "Este é o conteúdo.", user: user)
      assert_not artigo.save, "Salvou o artigo sem um título"
    end

    test "deve salvar artigo com título, conteúdo e usuário" do
      user = User.new(email: 'test2@example.com', password: 'password')
      artigo = Artigo.new(title: "Título de Teste", content: "Conteúdo com mais de 10 caracteres.", user: user)
      assert artigo.save, "Não salvou um artigo válido"
    end
  end

end
