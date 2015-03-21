get '/experiences' do
# this should show table rows of experiences
  @experiences = Experience.all
  erb :'/experience/experiences'
end

get '/experience/:id' do
  # this should show single experience by id
  @experience = Experience.where(params[:id])
  erb :"/experience/view_experience"
end

get '/experience/:id/perspectives' do
  @perspectives = Perspective.where(experience_id: params[:id])
  erb :'perspective/show_all'
end

