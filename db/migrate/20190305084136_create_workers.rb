class CreateWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :workers do |t|
      t.string :name, presence => true
      t.string :company
      t.string :position

      t.timestamps
    end
  end
end
