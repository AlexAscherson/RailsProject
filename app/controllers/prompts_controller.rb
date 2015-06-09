class PromptsController < ApplicationController
  def new
    @prompt = Prompt.new
  end

  def create
    Prompt.create(prompt_params)
    redirect_to(prompts_path)
  end

  def update
  Prompt.find(params[:id]).update(prompt_params)
    redirect_to(prompts_path)
  end

  def edit
  @prompt =Prompt.find(params[:id])
  end

  def destroy
    prompt = Prompt.find(params[:id])
    prompt.destroy
    redirect_to(prompts_path)
  end

  def show
    @prompt = Prompt.find(params[:id])
  end

  def index
    @prompts = Prompt.all
  end
end

private

    def prompt_params
      params.require(:prompt).permit(:name, :class_id, :user_id)
    end
