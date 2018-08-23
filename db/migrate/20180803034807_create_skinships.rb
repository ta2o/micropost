class CreateSkinships < ActiveRecord::Migration[5.0]
  def change
    create_table :skinships do |t|
      t.references :user, foreign_key: true
      t.references :like, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
