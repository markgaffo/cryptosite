class CreateGemtips < ActiveRecord::Migration[5.1]
  def change
    create_table :gemtips do |t|
      t.integer :tipnumb

      t.timestamps
    end
  end
end
