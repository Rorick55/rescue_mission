class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :body, null: false, limit: 2500
      t.string :creater, null: false
      t.integer :question_id, null: false

      t.timestamps
    end
  end
end

