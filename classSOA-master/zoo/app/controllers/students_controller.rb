class StudentsController < ApplicationController
def index
     #@message = "Hello, WELCOME to our Happy Kids School!"
     @studentdata = Studentdata.all
   end



 def show
   @studentdata = Studentdata.find_by_id(params[:id]) # what if this movie not in DB?
     # BUG: we should check @movie for validity here!
    end



 def new
   end
 def create
   @studentdata = Studentdata.create!(params[:studentdata])
   redirect_to students_path

   end
#    #def create
#     #   @studentdata = Studentdata.new(params[:studentdata])
#       #  if @studentdata.save
#          #   flash[:notice] = "#{@studentdata.name} was successfully created."
#              #  redirect_to movies_path
#                  #else
#                      #  render 'new' # note, 'new' template can access @student's field values!
#                          #end
#                            #end
end
