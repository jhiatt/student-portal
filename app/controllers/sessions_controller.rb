class SessionsController < ApplicationController

  def new
  end

  def create
    Unirest.post('http://localhost:3001/api/v1/login', 
            headers:{ "Accept" => "application/json" }, 
            parameters:{ email: params[:email], password: params[:password] }
              )
    redirect_to "/resumes"
  end


  def destroy

    redirect_to "/"
  end
end
