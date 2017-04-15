class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :text
      t.references :user
      t.references :group
      t.timestamps null: false
    end
  end
end
