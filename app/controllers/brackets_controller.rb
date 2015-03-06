class BracketsController < ApplicationController
  def new

    no = ["id", "created_at", "updated_at"]
    @column_names = Bracket.columns.map{|c| c.name}
    @column_names.delete("id")
    @column_names.delete("created_at")
    @column_names.delete("updated_at")
    @teams = Team.all
    @bracket = Bracket.new
  end

  def create
    byebug
    @bracket = Bracket.new(bracket_params)
    if @bracket.save
      redirect_to @bracket, notice: "Bracket was successfully created."
    else
      render :new
    end
  end

  private
  def bracket_params
    params.require(:bracket).permit!
  end
end
