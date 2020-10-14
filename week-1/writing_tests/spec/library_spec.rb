require 'library'
describe Library do
  it 'can find a specific book' do
    books = Library.new
    book = books.find_book('POODR')
    expect(book).to eq ({title: 'POODR', author: 'Sandi Metz', subject: 'OOP'})
  end

  it 'can add a new book' do
    books = Library.new
    books.add_book({title: '7 Habits', author: 'Stephen Covey', subject: 'Self Dev'})
    expect(books.list_books).to eq ([
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
      {title: '7 Habits', author: 'Stephen Covey', subject: 'Self Dev'}
    ])
  end

  it 'can remove a book' do
    books = Library.new
    books.remove_book('POODR')
    expect(books.list_books).to eq ([
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'}
    ])
  end

  it 'can list all the books on a specific subject' do
    books = Library.new
    ruby_books = books.all_books_by_subject('Ruby')
    expect(ruby_books).to eq ([
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'}
    ])
  end
end
