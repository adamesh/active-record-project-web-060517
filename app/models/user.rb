class User < ActiveRecord::Base

  has_many :book_users
  has_many :books, through: :book_users
  has_many :categories, through: :books
  has_many :authors, through: :books

  def check_out_book(book, due_date)
    # binding.pry
    checkout_record = BookUser.new(due_date)
    checkout_record.book_id = book.id
    checkout_record.user_id = self.id
    checkout_record
  end

  def return_book(book, return_date)
    checkout_record = BookUser.where(user_id: self.id, returned: false)
    checkout_record.return_date = return_date
    checkout_record.returned = true
  end

end
