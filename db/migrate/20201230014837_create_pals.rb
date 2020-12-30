class CreatePals < ActiveRecord::Migration[6.0]
  def change
    create_table :pals do |t|
      t.belongs_to :user1
      t.belongs_to :user2

      t.timestamps
    end
  end
end
