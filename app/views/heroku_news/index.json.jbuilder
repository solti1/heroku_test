json.array!(@heroku_news) do |heroku_news|
  json.extract! heroku_news, :id, :title, :description
  json.url heroku_news_url(heroku_news, format: :json)
end
