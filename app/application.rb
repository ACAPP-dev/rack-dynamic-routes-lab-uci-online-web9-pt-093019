class Application

  def call
    resp = Rack::Response.new
    req = Rack::Request.new


    if req.path.match(/items/)
      request_item = req.path.split("/items/").last
      if request_item == nil
        resp.status = 400
        resp.write "Error"
      else
        resp.write "#{request_item.price}"
      end
    else
      resp.status = 404
    end
    resp.finish
  end
end
