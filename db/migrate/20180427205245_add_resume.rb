class AddResume < ActiveRecord::Migration[5.2]
  def change
    add_attachment :users, :resume 
  end
end
