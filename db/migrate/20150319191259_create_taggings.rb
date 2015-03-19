class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.column :user_id, :integer
      t.column :photo_id, :integer

      t.timestamps 
    end
  end
end
