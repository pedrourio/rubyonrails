# app/controllers/comentarios_controller.rb
class ComentariosController < ApplicationController
  # Ação CREATE
  def create
    # 1. Encontrar o Artigo ao qual o comentário pertence
    @artigo = Artigo.find(params[:artigo_id])

    # 2. Criar o comentário associado ao artigo, usando os dados do formulário
    @comentario = @artigo.comentarios.create(comentario_params)

    # 3. Redirecionar de volta para a página do artigo
    redirect_to artigo_path(@artigo)
  end

  private
    # Um método privado para proteger nossos parâmetros (Strong Parameters)
    def comentario_params
      params.require(:comentario).permit(:body)
    end
end
