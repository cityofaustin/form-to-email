class SubmissionsController < ApplicationController

  def inbound
    delivery = deliver
    render json: delivery
  end

  def deliver
    begin
      response = FormMailer.send_email(params[:q]).deliver
      response = {
        status: "success",
        body: "Message delivery succeeded"
      }
    rescue
      response = {
        status: "error",
        body: "Message delivery failed"
      }
    end
    return response
  end

end
