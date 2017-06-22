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
    checkout_record = book.book_users.last
    checkout_record.return_date = return_date
  end

end
