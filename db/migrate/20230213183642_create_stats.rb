class CreateStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stats do |t|
      t.integer :vigor
      t.integer :attack
      t.integer :mana
      t.integer :faith
    end
  end
end
