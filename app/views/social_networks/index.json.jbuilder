json.twitter do
  json.array! @twitter, :tweet
end

json.facebook do
  json.array! @facebook, :status
end

json.instagram @instagram do |photo|
  json.photo photo[:picture]
end