class BracketsController < ApplicationController

  before_action :authenticate_user!
  before_action :authorize_user!, :except => [:index, :new, :create]
  before_action :lockout_user!, :only => [:create, :new, :edit, :update, :destroy]

  def index
    @bracket = current_user.bracket
  end

  def show
    @bracket = current_user.bracket
    @organization = @bracket.organization
    actual_bracket = Bracket.get_admin_bracket
    @score = @bracket.score(actual_bracket) rescue 0
    @average_team_score = @organization.average_team_score rescue 0
  end

  def edit
    no = ['id', 'created_at', 'updated_at']
    @column_names = Bracket.columns.map{|c| c.name}
    @column_names.delete('id')
    @column_names.delete('created_at')
    @column_names.delete('updated_at')
    @teams = Team.all
    @bracket = current_user.bracket
  end

  def update
    no = ['id', 'created_at', 'updated_at']
    @column_names = Bracket.columns.map{|c| c.name}
    @column_names.delete('id')
    @column_names.delete('created_at')
    @column_names.delete('updated_at')
    @teams = Team.all
    @bracket = current_user.bracket

    if @bracket.update_attributes(bracket_params)
      render json: {
        success_url: bracket_path(@bracket)
      }
    else
      redirect_to edit_bracket_path(current_user.bracket.id)
    end
  end

  def new
    if current_user.bracket.nil?
      no = ['id', 'created_at', 'updated_at']
      @column_names = Bracket.columns.map{|c| c.name}
      @column_names.delete('id')
      @column_names.delete('created_at')
      @column_names.delete('updated_at')
      @teams = Team.all
      @bracket = Bracket.new
    else
      redirect_to edit_bracket_path(current_user.bracket.id)
    end
end

  def create
    @bracket = Bracket.new(bracket_params)
    @bracket.user = current_user
    if @bracket.save
      render json: {
        success_url: bracket_path(@bracket)
      }
    else
      render :new
    end
  end

  def destroy
    @bracket.destroy
    respond_to do |format|
      format.html { redirect_to brackets_url, notice: "Bracket was successfully deleted." }
    end
  end

  private
  def bracket_params
    params.require(:bracket).permit!
  end

  def authorize_user!
    @bracket = Bracket.find(params[:id])
    if @bracket.user != current_user
      redirect_to brackets_path, error: "You are not authorized to view someone else's bracket."
    end
  end

  def lockout_user!
    if current_user.email != "admin@gmail.com"
    lockout_date = Date.parse('2015-03-18')  #This may not be correct, ask for help because time zone isnt considered here
    if Date.today > lockout_date
      redirect_to brackets_path, notice: "Bracket picks are completed for this year. Try playing next year."
    end
    end
  end


end
