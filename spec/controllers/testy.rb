describe 'Comment' do
  let(:expeditionist) {Expeditionist.create(name: "testicus", niche: "Travel")}

  it 'should bring render form to create new comment' do
    get '/comment/new'
    expect(last_response).to be_ok
  end

  it 'should create a comment' do
    post '/comment/new', params={comment: "The employee failed to achieve their purpose"}
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to_include(params[:comment])

  end
end