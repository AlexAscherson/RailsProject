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
    prompt = Prompt.find(params[:prompt_id])
    response = Response.find(params[:id])
    
    if response.update(response_params)
      redirect_to(prompt_response_path(prompt, response))
    else
      render 'edit'
    end
  end

  def edit
    @prompt = Prompt.find(params[:prompt_id])
    @response =Response.find(params[:id])

  end

  def destroy
    response = Response.find(params[:id])
    response.destroy
    redirect_to(response_path)
  end

  def show
    
    @prompt = Prompt.find(params[:prompt_id])
    @response = Response.find(params[:id])

  end

  def index
    # @newres = Response.joins('INNER JOIN prompts ON prompts.id = responses.prompt_id')
    @prompt = Prompt.find(params[:prompt_id])
    @responses = Response.find_by prompt_id: 1 
    # WHY DOES THIS WORK?
  end
end

private

    def response_params
      params.require(:response).permit(:prompt_id, :user_id, :content)
    end
