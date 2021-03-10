class CreateLikesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :likes_tables do |t|

      t.timestamps
    end
  end
end
