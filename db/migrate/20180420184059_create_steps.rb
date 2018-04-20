class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.column :description, :varchar
      t.column :due_date, :date
      t.column :priority, :integer
      t.column :status, :boolean
    end
  end
end
