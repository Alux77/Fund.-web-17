class CreateUser < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string   :name
      t.string   :email
      t.string   :password
      t.integer  :rounds
      t.integer  :score
    end
  end
  
end
