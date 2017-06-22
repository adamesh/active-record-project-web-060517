class User < ActiveRecord::Base

  has_many :book_users
  has_many :books, through: :book_users
  has_many :categories, through: :books
  has_many :authors, through: :books

  def check_out_book(book, due_date)
    # binding.pry
    checkout_record = BookUser.new(due_date)
    checkout_record.book = book
    checkout_record.user = self
  end

  def return_book(book, return_date)
    checkout_record = UserBook.where(user: self, returned: false)
    checkout_record.return_date = return_date
    checkout_record.returned = true
  end

end
