class BracketsController < ApplicationController

  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @brackets = Bracket.all
  end

  def show
  end

  def edit
    no = ["id", "created_at", "updated_at"]
    @column_names = Bracket.columns.map{|c| c.name}
    @column_names.delete("id")
    @column_names.delete("created_at")
    @column_names.delete("updated_at")
    @teams = Team.all

    @bracket = current_user.bracket
  end

  def new
    if current_user.bracket == nil
    no = ["id", "created_at", "updated_at"]
    @column_names = Bracket.columns.map{|c| c.name}
    @column_names.delete("id")
    @column_names.delete("created_at")
    @column_names.delete("updated_at")
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
      redirect_to @bracket, notice: "Bracket was successfully created."
    else
      render :new
    end
  end

  def destroy
    @bracket.destroy
    respond_to do |format|
      format.html { redirect_to brackets_url, notice: 'Bracket was successfully deleted.' }
    end
  end

  private
  def bracket_params
    params.require(:bracket).permit!
  end


end
