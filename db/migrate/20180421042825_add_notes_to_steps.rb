class AddNotesToSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :steps, :notes, :varchar
  end
end
