class ChangeBookingsValidationDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :validation, 'pending' 
  end
end
