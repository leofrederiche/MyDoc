class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.text :texto

      t.timestamps
    end
  end
end
