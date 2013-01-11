class OperatesController < ApplicationController
   def index#ok
     @operates = Operate.all
   end
   #def set
   #  @operates = Operate.all
   #end
  def update #ok
     @operate = Operate.find params[:id]
     @operate.update_attributes!(params[:operate])
     respond_to do |client_wants|
     client_wants.html {  redirect_to operate_path(@operate)  } # as before
     client_wants.xml  {  render :xml => @operate.to_xml    }
     end
   end
   def memo #0k
    @operates = Operate.all
   end
   def new #ok

   end
   def destroy #ok
     @operate= Operate.find(params[:id])
     @operate.destroy
     flash[:notice] = "Operate '#{@operate.id}' deleted."
     redirect_to operates_path
   end

   def edit #ok
     @operate = Operate.find params[:id]
   end


   def create #ok
     @operate = Operate.create!(params[:operate])
     redirect_to operates_path
   end
   def show #ok
     id = params[:id] # retrieve HOmework ID from URI route
     @operate = Operate.find(id) # look up studnet by unique ID
     #@student = Student.all
     # will render app/views/operates/show.html.haml by default
   end
end
