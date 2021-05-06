class RemoveDoctor < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctor, spacialty, 
  end
end
