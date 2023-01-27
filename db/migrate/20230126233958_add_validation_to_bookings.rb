class AddValidationToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :validation, :string
  end
end
