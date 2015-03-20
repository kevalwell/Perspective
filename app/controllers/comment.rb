get '/comments/new' do
  erb :'comment/new'
end

post '/perspective/:id/comments' do
  p params
  new_comment = Comment.new(title: params[:title],
                            content: params[:content],
                            perspective: @cur_perspective)

  if new_comment.save
    redirect "/perspective/#{@cur_perspective.id}" #<<<< how to find current id?
  else
    [402, "You did something wrong"]
  end
end

#errors, not working
