class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.date :dob
      t.string :gender
      t.string :qualification
      t.string :hobbies
      t.string :something

      t.timestamps
    end
  end
end
