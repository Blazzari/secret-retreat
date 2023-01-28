class ChangeDataTypeForValidation < ActiveRecord::Migration[7.0]
  def change
    change_column(:bookings, :validation, :string)
  end
end
