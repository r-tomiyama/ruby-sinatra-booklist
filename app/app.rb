require 'sinatra'
require 'mysql2'

client = Mysql2::Client.new(host: 'localhost', username: 'root', database: 'booklist', encoding: 'utf8')

get '/' do
    @records = client.query("SELECT * FROM books ORDER BY created_at DESC")
    erb :booklist
end

post '/' do
    book_title = params['book_title']

    statement = client.prepare('INSERT INTO books (book_title) VALUES(?)')
    statement.execute(book_title)

    @records = client.query("SELECT * FROM books ORDER BY created_at DESC")

    erb :booklist
end
