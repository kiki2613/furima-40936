class CreateItmesStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :itmes_statuses do |t|

      t.timestamps
    end
  end
end
