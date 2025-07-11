class CreateComentarios < ActiveRecord::Migration[8.0]
  def change
    create_table :comentarios do |t|
      t.text :body
      t.references :artigo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
