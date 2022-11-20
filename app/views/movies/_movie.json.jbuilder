json.extract! movie, :id, :title, :launch_year, :created_at, :updated_at
json.url movie_url(movie, format: :json)
