class AddCohortIdAndEmail < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :email, :string
    add_column :students, :cohort_id, :integer
  end
end
