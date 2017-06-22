class AddDueDateToBookUsers < ActiveRecord::Migration[5.0]

  def change
    add_column :book_users, :returned?, :boolean, :default => true
  end

end
