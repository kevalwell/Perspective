get '/expeditionists' do
# this should show table of expeditionists rows
  @expeditionists = Expeditionist.all
  erb :'/expeditionist/view_expeditionists'
end

# get'/expeditionist/:id' do
#  #this should show expeditionists experiences
#  @experiences = Experience.find(params[:id])
#  erb :'/expeditionist/view_expeditionists'
# end
