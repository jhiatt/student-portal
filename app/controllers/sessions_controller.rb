class SessionsController < ApplicationController

  def new
  end

  def create
    student = Student.new(Unirest.post('http://localhost:3001/api/v1/login.json', 
            headers:{ "Accept" => "application/json" }, 
            parameters:{ email: params[:email], password: params[:password] }
              ).body)
    session[:user] = student
    redirect_to "resumes#index"
  end


  def destroy
    session[:user_id] = nil
    render "/sign_in"
  end
end
