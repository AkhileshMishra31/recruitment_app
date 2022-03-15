class CreateCompanyjobs < ActiveRecord::Migration[7.0]
  def change
    create_table :companyjobs do |t|

      t.timestamps
    end
  end
end
