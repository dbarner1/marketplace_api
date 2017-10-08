module Response
  def json_response(object, status = :ok, headers = 'Access-Control-Allow-Origin: *')
    render json: object, status: status
  end
end
