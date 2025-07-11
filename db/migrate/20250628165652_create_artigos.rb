class CreateArtigos < ActiveRecord::Migration[8.0]
  def change
    create_table :artigos do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
