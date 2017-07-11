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