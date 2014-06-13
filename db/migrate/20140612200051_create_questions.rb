class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :subject, null: false
      t.string :body, null: false, limit: 2000
      t.string :creater

      t.timestamps
    end
  end
end

