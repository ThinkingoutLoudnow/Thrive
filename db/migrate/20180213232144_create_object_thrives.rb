class CreateObjectThrives < ActiveRecord::Migration[5.1]
  def change
    create_table :object_thrives do |t|

      t.timestamps
    end
  end
end
