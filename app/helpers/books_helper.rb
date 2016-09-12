module BooksHelper
  def book_link book
      "<a href='books/#{book.id}'>".html_safe + book.title + "</a>".html_safe
  end
end
