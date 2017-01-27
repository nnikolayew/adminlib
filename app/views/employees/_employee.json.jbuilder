json.extract! employee, :id, :surname, :name, :lastname, :birthday, :created_at, :updated_at
json.url employee_url(employee, format: :json)