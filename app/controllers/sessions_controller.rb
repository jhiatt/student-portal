class SessionsController < ApplicationController

  def new
  end

  def create
    Unirest.post('http://localhost:3001/api/v1', 
            headers:{ "Accept" => "application/json" }, 
            parameters:{ email: params[:email], password: params[:password] }
              )
    redirect_to "/resumes"
  end


  def destroy
    Unirest.delete('http://localhost:3001/api/v1/', 
                  headers: { "Accept" => "application/json" },
                  parameters: nil
                  )
    redirect_to "/"
  end
end
