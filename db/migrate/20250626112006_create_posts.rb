class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.text :comment
      t.belongs_to :user

      t.timestamps
    end
  end
end
