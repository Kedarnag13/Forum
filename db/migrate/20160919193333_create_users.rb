class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :employee_id
      t.string :password
      t.string :password_confimation
      t.string :designation
      t.boolean :status
      t.string :avatar_url

      t.timestamps null: false
    end
  end
end
