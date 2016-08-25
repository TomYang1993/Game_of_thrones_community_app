class UpdateHouse < ActiveRecord::Migration[5.0]
  def change
    rename_column :houses, :backgroud_image, :background_image
  end
end
