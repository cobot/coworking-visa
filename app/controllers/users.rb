CoworkingVisa.controller  do
  get '/users/new' do
    @user = User.new
    render '/users/new'
  end
  
  post '/users' do
    @user = User.new (params[:user])
    if @user.save
      flash.next['alert alert-success'] = "You have successfully signed up, we will confirm you shortly"
      redirect '/'
    else
      flash.now['alert alert-error'] = "We couldn't sign you up. :("
      render '/users/new'
    end
  end
  
  get '/unauthenticated' do
    head status: '404'
  end
end