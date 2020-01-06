
class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)


    if req.path.match(/items/)
      request_item = req.path.split("/items/").last
      if request_item == nil
        resp.status = 400
        resp.write "Error"
      else
        puts request_item
        resp.write "#{@@items.find(name=request_item).price}"
      end
    else
      resp.status = 404
      resp.write "Route not found"
    end
    resp.finish
  end
end
