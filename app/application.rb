class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new

    request_item = req.path.split("/items/").last

    if req.path.match(/items/)
      if request_item == nil
        resp.status = 400
        resp.write "Error"
      else
        #write
      end
    else
      resp.status = 404
    end

    resp.finish



  end

end
