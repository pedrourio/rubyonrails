json.extract! artigo, :id, :title, :content, :created_at, :updated_at
json.url artigo_url(artigo, format: :json)
