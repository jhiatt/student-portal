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

  first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.text "bio"
    t.string "link_in"
    t.string "twitter"
    t.string "personal_url"
    t.string "resume_url"
    t.string "github_url"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest