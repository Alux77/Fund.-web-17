class CreateQuestion < ActiveRecord::Migration

  def change
    create_table :questions do |t|
      t.integer  :deck
      t.string   :question
      t.string   :answer
      t.string   :op_a
      t.string   :op_b
      t.string   :op_c
    end
  end

end
