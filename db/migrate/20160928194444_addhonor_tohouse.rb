class AddhonorTohouse < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :honor, :integer
  end
end
