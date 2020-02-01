class CreateEndangereds < ActiveRecord::Migration[5.2]
  def change
    create_table :endangereds do |t|
      t.string :name
      t.string :icun

      t.timestamps
    end
  end
end
