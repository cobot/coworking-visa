CoworkingVisa.controller do
   get '/passes/new' do
     authorize!('/login') 
     @pass = Pass.new
     render '/passes/new'
   end
   
   post '/passes' do
     authorize!('/login') 
     @pass = Pass.new(params[:pass])
     @pass.user_id = current_user.id
     if @pass.save
       render '/passes/show'
     else
       render '/passes/new'
     end
   end
end