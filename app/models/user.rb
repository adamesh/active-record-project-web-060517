class User < ActiveRecord::Base

  has_many :books, through: :book_users
  has_many :categories, through: :books
  has_many :authors, through: :books

  def check_out_book(book, due_date)
    checkout_record = BookUser.new(book, self)
    book.due_date = due_date
    checkout_record.returned = false
  end

  def return_book(book)

  end

end
