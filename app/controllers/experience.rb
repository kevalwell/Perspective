get '/experiences' do
# this should show table rows of experiences
  @experiences = Experience.all
  erb :'/experience/experiences'
end

get '/experience/:id' do
  # this should show single experience by id
  @experience = Experience.find_by(params[:id])
  erb :"/experience/experience"
end
