class CreateAddDeviseTrackableColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :add_devise_trackable_columns_to_users do |t|

      t.timestamps
    end
  end
end
