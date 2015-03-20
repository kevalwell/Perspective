get '/comments/new' do
  erb :'/comment/new'
end

post '/perspective/:id/comments' do

 # @comment = Comment.create(params, perspective_id: params[:id])
  new_comment = Comment.new(title: params[:title],
                            content: params[:content],
                            perspective: Perspective.find_by(id: params[:id]))
# byebug
  if new_comment.save
    redirect "/perspective/#{params[:id]}" #<<<< how to find current id?
  else
    [402, "You did something wrong"]
  end
end

#errors, not working
