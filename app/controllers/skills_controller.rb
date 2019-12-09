class SkillsController < ApplicationController
  def new
    @skill = Skill.new
    @skills = Skill.all
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to new_skill_path
    else
      render 'new'
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      redirect_to new_skill_path
    else
      render 'new'
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
     redirect_to new_skill_path
  end  


  private
  def skill_params
    params.require(:skill).permit(:name, :knowledge)
  end
end
