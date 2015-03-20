get '/perspective/:id' do
  @cur_perspective = Perspective.find_by(id: params[:id])
  if @cur_perspective
    erb :'perspective/show_one'
  else
    [404, "no perspective found"]
  end
end

# post '/perspective/:id/new' do
#   #this will create new perspective
#   @perspective = Perspective.create(params)
#   redirect "/perspective/#{@perspective.id}"
# end
