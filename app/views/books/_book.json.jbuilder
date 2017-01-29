json.extract! book, :id, :name, :autor, :shifr, :publishe, :year, :price, :date, :created_at, :updated_at
json.url book_url(book, format: :json)