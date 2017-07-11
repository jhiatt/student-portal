class Student < ApplicationRecord

  def initialize
    
  end

  def update(hash)
    Unirest.patch('http://localhost:3001/api/v1/', 
                    headers: { "Accept" => "application/json" },
                    parameters: hash
                    )



end