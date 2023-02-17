class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :role
      t.belongs_to :stat
      t.belongs_to :party
    end
  end
end
