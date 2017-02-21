enable :sessions

get '/' do
  session.clear
  erb :index
end
# se asegura de terminar cualquier sesion
# redirige a index