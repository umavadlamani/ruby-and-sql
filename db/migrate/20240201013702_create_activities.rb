class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.string "mode"
      t.string "date_time"
      t.string "notes"
      t.integer "contact_id" #foreign key
      t.integer "salesperson_id"
      t.timestamps
    end
  end
end
