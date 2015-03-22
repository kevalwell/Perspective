get '/expeditionists' do
# this should show table of expeditionists rows
  @expeditionists = Expeditionist.all
  erb :'/expeditionist/view_expeditionists'
end

get '/expeditionist/:id/experiences' do
 #this should show expeditionists experiences
 @experiences = Experience.find_by(params[:id])
 erb :'/expeditionist/view_expeditionists'
end

get '/expeditionist/:id/perspective' do
  @perspectives = Perspective.where(expeditionist_id: params[:id])
  @experiences = Experience.where(expeditionist_id: params[:id])
  erb :'/expeditionist/sole_experience'
end
