CoworkingVisa.controller do
  post '/checkins' do
    @pass = Pass.use(params[:code])
    if @pass
      render '/passes/show'
    else
      flash.next['alert'] = 'Sorry no valid Visa found'
      redirect '/'
    end
  end
end