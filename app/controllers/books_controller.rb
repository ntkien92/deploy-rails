class BooksController < ApplicationController
  # GET /books
  def index
    @books = Book.all
    binding.pry
  end

  # GET /books/new
  def new
  end

  # POST /books
  def create
  end

  # GET /books/1
  def show
  end

  # GET /books/1/edit
  def edit
  end

  # PATCH/PUT /books/1
  def update
  end

  # DELETE /books/1
  def destroy
  end
end
