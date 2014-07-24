class Application < Grape::API

  get '/api/text/:bar' do
    header 'Content-Type', 'text/plain'
    params[:bar]
  end

  get '/api/json/:bar' do
    header 'Content-Type', 'application/json'
    { bar: params[:bar] }
  end

  post '/api/json/:bar' do
    header 'Content-Type', 'application/json'
    {
      bar: params[:bar],
      foo: 1
    }
  end

end
