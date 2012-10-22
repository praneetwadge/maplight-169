class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :from
      t.string :to
      t.decimal :amount
      t.date :date
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
