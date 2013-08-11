class CreateShirtStyles < ActiveRecord::Migration
  def change
    create_table :shirt_styles do |t|
      t.string :color
      t.string :size

      t.timestamps
    end
  end
end
