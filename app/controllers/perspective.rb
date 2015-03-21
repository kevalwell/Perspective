get '/perspective/search' do

  title = params[:title]
  @perspective = Perspective.find_by(title:title)

  redirect "/perspective/#{@perspective.id}"
end

get '/perspective/new' do
  erb :'perspective/new'
end

get '/perspective/:id' do
  @cur_perspective = Perspective.find_by(id: params[:id])
  if @cur_perspective
    erb :'perspective/show_one'
  else
    [404, "no perspective found"]
  end
end



post '/perspective/new' do
  #this will create new perspective
  # byebug
   new_perspective = Perspective.new(title: params[:title],
                                     content: params[:content],
                                     experience: Experience.find_by(id: params[:id]))
  if new_perspective.save
    redirect "/perspective/#{new_perspective.id}"
  else
    [402, "boned again"]
  end
end


  # <!-- <form action= "/perspective/<%= #@cur_perspective.id %>/comment/<%= comment.id %>" method='post'>
  #         <input type='hidden' name='_method' value='delete' />
  #         <input type='text' placeholder='content' name='content' />
  #         <input type='submit' value='Delete' />
  #       </form> -->

