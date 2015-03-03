json.array!(@foods) do |food|
  json.extract! food, :id, :name, :calories, :course
  json.url food_url(food, format: :json)
end
