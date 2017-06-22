class AddDueDateToBookUsers < ActiveRecord::Migration[5.0]

  def change
    add_column :book_users, :returned?, :boolean, :default => false
    add_column :book_users, :due_date, :string
    add_column :book_users, :return_date, :string
  end

end
