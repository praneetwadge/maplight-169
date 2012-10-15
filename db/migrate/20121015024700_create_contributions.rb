class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.date :date
      t.string :contributor
      t.decimal :amount
      t.string :city
      t.string :state
      t.string :recipient

      t.timestamps
    end
  end
end
