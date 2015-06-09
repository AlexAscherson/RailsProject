class ResponsesController < ApplicationController
  def new
        @response = Response.new
  end

  def create
    response = Response.create(response_params)
    if response.save
      redirect_to(response_path(response))
    else
      render 'new'
    end
  end

  def update
    response = Response.find(params[:id])
    if response.update(response_params)
      redirect_to(response_path(response))
    else
      render 'edit'
    end
  end

  def edit
        @response =Response.find(params[:id])

  end

  def destroy
    response = Response.find(params[:id])
    response.destroy
    redirect_to(response_path)
  end

  def show
    @response = Response.find(params[:id])

  end

  def index
    @responses = Response.all
  end
end

private

    def response_params
      params.require(:response).permit(:prompts_id, :user_id)
    end
