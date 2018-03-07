json.doors @doors.each do |door|
  json.id door.id
  json.name door.name
  json.price door.price
  json.model_path door.model_path
  json.cut_path door.cut_path
end
