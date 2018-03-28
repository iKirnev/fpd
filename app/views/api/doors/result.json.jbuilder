json.doors @doors.each do |door|
  json.id door.id
  json.name door.name
  json.price door.price
  json.a_key door.a_key
  json.model_small_path door.model_small_path
end
