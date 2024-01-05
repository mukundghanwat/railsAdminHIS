class CreateDiagnosismasters < ActiveRecord::Migration[7.1]
  def change
    create_table :diagnosismasters do |t|

      t.timestamps
    end
  end
end
