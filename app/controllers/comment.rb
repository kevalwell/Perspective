
post '/perspective/:id/comments' do
  new_comment = Comment.new(title: params[:title],
                            content: params[:content],
                            perspective: Perspective.find_by(id: params[:id]))

  if new_comment.save
    redirect "/perspective/#{params[:id]}"
  else
    [402, "You did something wrong"]
  end
end

delete '/perspective/:id/comment/:id' do
  cur_comment = Comment.find_by(id: params[:id])
  perspective_id = cur_comment.perspective_id
  if cur_comment
    if cur_comment.destroy
      redirect "/perspective/#{perspective_id}"
    else
      [500, "didn't delete"]
    end
  else
    [404, "no comment found"]
  end
end
