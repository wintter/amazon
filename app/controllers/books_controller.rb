class BooksController < ApplicationController
  before_action :get_categories

  def get_categories
    @categories = Category.all
  end

  def new
    order = Order.new
    book = Book.new(title: 'fsd', description: 'fsdfs', price: 13, in_stock: 1)
    order.add_book book
    if order.save

    else
      @error = order.errors.full_messages
    end
  end

  def index
    if params[:id]
      @category = Category.find(params[:id])
      @books = @category.books
      render :layout => false
    else
      @books = Book.all
    end
  end

  def show
    @book = Book.find(params[:id])
  end

end
