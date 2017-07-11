
class ResumesController < ApplicationController

  def edit
    @form = params[:form]
    render "edit.html.erb"
  end

  def update
    if params[:personal]
      Unirest.patch('http://localhost:3001/api/v1/', 
                    headers: { "Accept" => "application/json" },
                    parameters: {first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email],
                                phone: params[:phone_number],
                                bio: params[:bio],
                                linked_in: params[:linked_in],
                                twitter: params[:twitter],
                                personal_url: params[:website],
                                resume_url: params[:resume_url],
                                github_url: params[:github_url],
                                avatar: params[:photo],
                                password: params[:password],
                                password_confimation: params[:password_confirmation],
                                }
                    )
    end
    redirect_to '/resumes'
  end
end

