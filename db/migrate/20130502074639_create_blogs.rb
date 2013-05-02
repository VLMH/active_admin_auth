class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title, :null => false, :default => ""
      t.text :body,    :null => false, :default => ""
      t.references :user

      t.timestamps
    end
    add_index :blogs, :user_id
  end
end
