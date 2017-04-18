class CreateFeedContents < ActiveRecord::Migration[5.0]
  def change
    create_table :feed_contents do |t|
      t.references :contentable, polymorphic: true
      t.integer :group_id
      t.timestamps
    end
  end
end
