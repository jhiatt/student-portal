class ResumesController < ApplicationController
  def index
    @student = student.find_by(:id)
    @employment = @student.experiences
    @skill = @student.experiences
    @education = @student.experiences
    @capstone = @student.experiences
    render "index.html.erb"
  end

  def edit
    @form = params[:form]
    render "edit.html.erb"
  end

  def update
    if params[:personal]
      student = Student.find_by(id: params[:id])
      student.update({first_name: params[:first_name],
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
                                })
      
    end
    if params[:skill]
      Unirest.patch('http://localhost:3001/api/v1/',
                    headers: { "Accept" => "application/json" },
                    parameters: {name: params[:name],
                                }
                    )
    end

    if params[:employment]
          Unirest.patch('http://localhost:3001/api/v1/',
                        headers: { "Accept" => "application/json" },
                        parameters: {name: params[:name],
                                    start_time: params[:start_time],
                                    end_time: params[:end_time],
                                    job_title:params[:job_title],
                                    company: params[:company], 
                                    details: params[:details],
                                    student_id: params[:student_id],

                                    }
                        )
        end

    if params[:education]
         Unirest.patch('http://localhost:3001/api/v1/',
                        headers: { "Accept" => "application/json" },
                        parameters: {
                                    start_time: params[:start_time], 
                                    end_time: params[:end_time], 
                                    degree: params[:degree], 
                                    university: params[:university], 
                                    details: params[:details]
                        }
    end
    if params[:capstone]
          Unirest.patch('http://localhost:3001/api/v1/', 
                              headers: { "Accept" => "application/json" },
                              parameters: {name: params[:name],
                          description: params[:description],
                          URL: params[:url],
                          Screenshot: params[:screenshot],
          }
    redirect_to '/resumes'
  end
end
