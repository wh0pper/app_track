class AddTimestamps < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :jobs, null: true
    add_timestamps :steps, null: true
  end
end
