class ResponsesController < ApplicationController
  def new
        @prompt = Prompt.find(params[:prompt_id])
        @response = Response.new
  end

  def create
    response = Response.create(response_params)
    prompt = Prompt.find(params[:prompt_id])
    if response.save
      redirect_to(prompt_response_path(prompt,response))
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
    binding.pry
    @prompt = Prompt.find(params[:prompt_id])
    @response = Response.find(params[:id])

  end

  def index
    @responses = Response.all
  end
end

private

    def response_params
      params.require(:response).permit(:prompt_id, :user_id)
    end
