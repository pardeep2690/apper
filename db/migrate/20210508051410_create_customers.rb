class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.string :title
      t.string :fname
      t.string :mname
      t.string :lname
      t.date :dob
      t.string :aadhaar
      t.string :pan
      t.string :mob
      t.string :pin
      t.string :city
      t.string :state
      t.string :address
      t.string :mother_first_name
      t.string :mother_middle_name
      t.string :mother_last_name
      t.string :guardian_first_name
      t.string :guardin_middle_name
      t.string :guardian_last_name
      t.boolean :married
      t.boolean :nominee_required
      t.string :nominee_name
      t.date :nominee_dob
      t.string :nominee_address
      t.string :cust_id
      t.string :account_no

      t.timestamps
    end
  end
end
