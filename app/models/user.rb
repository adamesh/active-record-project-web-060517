class User < ActiveRecord::Base

  has_many :book_users
  has_many :books, through: :book_users
  has_many :categories, through: :books
  has_many :authors, through: :books

  def check_out_book(book, due_date)
    checkout_record = BookUser.new(due_date)
  end

  def return_book(book)
    
  end

end
