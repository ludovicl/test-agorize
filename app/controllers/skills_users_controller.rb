require 'skills_aggregation'

class SkillsUsersController < ApplicationController
  before_action :set_skills_users, only: [:show, :edit, :update, :destroy]

  # GET /skills_users
  # GET /skills_users.json
  def index
    @skills_users = SkillsUser.all
  end

  # GET /skills_users/1
  # GET /skills_users/1.json
  def show
  end

  # GET /skills_users/new
  def new
    @skills_users = SkillsUser.new
  end

  # GET /skills_users/1/edit
  def edit
  end

  # POST /skills_users
  # POST /skills_users.json
  def create
    @skills_users = SkillsUser.new(skills_users_params)

    respond_to do |format|
      if @skills_users.save
        format.html { redirect_to @skills_users, notice: 'Skill user was successfully created.' }
        format.json { render :show, status: :created, location: @skills_users }
      else
        format.html { render :new }
        format.json { render json: @skills_users.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skills_users/1
  # PATCH/PUT /skills_users/1.json
  def update
    respond_to do |format|
      if @skills_users.update(skills_users_params)
        format.html { redirect_to @skills_users, notice: 'Skill user was successfully updated.' }
        format.json { render :show, status: :ok, location: @skills_users }
      else
        format.html { render :edit }
        format.json { render json: @skills_users.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills_users/1
  # DELETE /skills_users/1.json
  def destroy
    @skills_users.destroy
    respond_to do |format|
      format.html { redirect_to skills_users_url, notice: 'Skill user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def home
    @skills_points = SkillsAggregation.perform
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skills_users
      @skills_users = SkillsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skills_users_params
      params.require(:skills_user).permit(:skill_id, :user_id)
    end
end
