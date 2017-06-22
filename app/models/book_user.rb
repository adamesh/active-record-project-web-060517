class BookUser < ActiveRecord::Base

  belongs_to :user
  belongs_to :book

  def initialize(book, user)
    @book = book
    @user = user
    book.users << user
    user.books << book
  end

end
