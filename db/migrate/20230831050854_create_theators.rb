class CreateTheators < ActiveRecord::Migration[7.0]
  def change
    create_table :theators do |t|

      t.timestamps
    end
  end
end
