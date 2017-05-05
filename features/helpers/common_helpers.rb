require 'net/http'


def verify_website
  uri = URI('http://localhost:3000')
  res = Net::HTTP.get_response(uri)
  return res 
end

def create(entity, json)
  uri = URI("http://localhost:3000/#{entity}s")
  req = Net::HTTP::Post.new(uri)
  req.set_form_data(json)

  http = Net::HTTP.new(uri.hostname, uri.port)
  res = http.request(req)
  return res
end

def get(entity, id)
  uri = URI("http://localhost:3000/#{entity}s/#{id}")
  req = Net::HTTP::Get.new(uri)

  http = Net::HTTP.new(uri.hostname, uri.port)
  res = http.request(req)
  return res

end

def update(entity, id, json)
  uri = URI("http://localhost:3000/#{entity}s/#{id}")
  req = Net::HTTP::Put.new(uri)
  req.set_form_data(json)
  
  http = Net::HTTP.new(uri.hostname, uri.port)
  res = http.request(req)
  return res
end

def delete(entity, id)
  uri = URI("http://localhost:3000/#{entity}s/#{id}")
  req = Net::HTTP::Delete.new(uri)

  http = Net::HTTP.new(uri.hostname, uri.port)
  res = http.request(req)
  return res
end
