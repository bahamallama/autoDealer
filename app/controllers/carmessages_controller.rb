class CarmessagesController < ApplicationController
  def new
      @carmessage = Carmessage.new
      redirect_to :root
    end

    def create
      @carmessage = Carmessage.new(message_params)
    
      if @carmessage.valid?
        CarmessageMailer.new_carmessage(@carmessage).deliver_now
        redirect_to :back, notice: "Your messages has been sent."
      else
        flash[:alert] = "An error occurred while delivering this message."
        render :new
      end
    end

  private

    def message_params
      params.require(:carmessage).permit(:name, :email, :content, :special, :make, :model, :year, :carID)
    end  
end
