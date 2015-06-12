class ResponsesController < ApplicationController
  before_filter :set_prompt




  def new
    @response = Response.new
  end

  def create
    response = Response.create(response_params)
    if response.save
      redirect_to(prompt_response_path(@prompt,response))
    else
      render 'new'
    end
  end

  def update
    response = Response.find(params[:id])
    if response.update(response_params)
      redirect_to(prompt_response_path(@prompt, response))
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
    # @newres = Response.joins('INNER JOIN prompts ON prompts.id = responses.prompt_id')  
    # WHY DOES THIS WORK?
    # @response_values = Response.all.map{|response| response.content}
    # @response_count_hash = @response_values.each_with_object(Hash.new(0)) { |content, counts | counts[content] +=1}
  end

  private
    def set_prompt
      @prompt = Prompt.find(params[:prompt_id])
      @user_prompts = Prompt.not_responded(current_user)
        #this is running on every action.  See top. 
    end

    def response_params
      params.require(:response).permit(:prompt_id, :user_id, :content)
    end

end
