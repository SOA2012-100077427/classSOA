#This file is app/controllers/movies_controller.rb
 class StudentsController < ApplicationController
   def index
     @students = Student.all
   end
   def set
     @students = Student.all
   end
   def test

   end
   def spin
   end
   def beach
   end
   def food
   end
   def update
     @student = Student.find params[:id]
     @student.update_attributes!(params[:student])
     respond_to do |client_wants|
     client_wants.html {  redirect_to student_path(@student)  } # as before
     client_wants.xml  {  render :xml => @student.to_xml    }
     end
   end
   def new

   end
   def destroy
     @student= Student.find(params[:id])
     @student.destroy
     flash[:notice] = "Student '#{@student.id}' deleted."
     redirect_to students_path
   end

   def edit
     @student = Student.find params[:id]
   end

#   def update
#     @student = Student.find params[:id]
#     @student.update_attributes!(params[:student])
#     flash[:notice] = "#{@student.title} was successfully updated."
#     redirect_to student_path(@student)
#   end
   def create
     @student = Student.create!(params[:student])
     redirect_to students_path
   end
   def show
     id = params[:id] # retrieve movie ID from URI route
     @student = Student.find(id) # look up movie by unique ID
     # will render app/views/movies/show.html.haml by default
   end
 end
