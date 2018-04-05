class CreateUserHomeworks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_homeworks do |t|
      t.references :user, foreign_key: true
      t.references :homework, foreign_key: true
      t.boolean :selected , default: false

      t.timestamps
    end
  end
end
