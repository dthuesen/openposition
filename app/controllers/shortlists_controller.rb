class ShortlistController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :set_open_positions_list, only: [:show, :edit, :destroy]
  before_action :open_position_list_number_new, only: [:new]



  def index
    @on_shortlist = OpenPositionsList.where(nil)
    @on_shortlist = OpenPositionsList.where(shortlist: true)
  end

  # GET /open_positions_lists/1/edit
  def edit
  end

  # DELETE /open_positions_lists/1
  # DELETE /open_positions_lists/1.json
  def destroy
    @on_shortlist.destroy
    respond_to do |format|
      format.html { redirect_to open_positions_lists_url, notice: 'Open positions list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    # A list of the param names that can be used for filtering the Product list
    def filtering_params(params)
      params.slice(:shortlist, :client, :category, :updated_at, :costmodel, :state, :prio)
    end
    
    def sort_column
      OpenPositionsList.column_names.include?(params[:sort]) ? params[:sort] : "number"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    
  
    # Use callbacks to share common setup or constraints between actions.
    def set_open_positions_list
      @on_shortlist = OpenPositionsList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_positions_list_params
      params.require(:on_shortlist).permit(:shortlist, :number, :summary, :description, :option, :component, :category, :prio, :responsible, :state, :costmodel, :affects_version, :issue_ticket, :ticket_text, :notes, :in_sprint, :client)
    end
    
    def open_position_list_number_new
      @on_shortlist = OpenPositionsList.last
      if @on_shortlist == nil
        @on_shortlist = OpenPositionsList.new
        @on_shortlist.number = 1
      else
        @on_shortlist = OpenPositionsList.new
        @on_shortlist.number = OpenPositionsList.last[:number] += 1
      end
    end
end
