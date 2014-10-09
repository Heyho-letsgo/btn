json.array!(@visiteurs) do |visiteur|
  json.extract! visiteur, :id, :email
  json.url visiteur_url(visiteur, format: :json)
end
