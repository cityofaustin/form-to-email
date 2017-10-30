class SubmissionsController < ApplicationController

  def inbound
    puts "submissions#inbound"
    render json: {
      status: "success",
      body: "Message processed"
    }
  end

end
