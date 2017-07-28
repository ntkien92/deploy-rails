require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'create book success' do
    let (:book) {Book.new(name: 'Kien')}
    let (:book2) {Book.new(name: 'Kien')}
    it 'create book with name' do
      book.save
      expect(book2.save).to eq false
    end

    it 'create book with name' do
      expect(book.save).to eq true
    end

  end
end
