class OpenPositionsListsController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :set_open_positions_list, only: [:show, :edit, :update, :destroy]
  before_action :open_position_list_number_new, only: [:new]

  def shortlist
    @on_shortlist = OpenPositionsList.where(nil)
    @on_shortlist = OpenPositionsList.where(shortlist: true)
  end
  
  # GET /open_positions_lists
  # GET /open_positions_lists.json
  def index
    @open_positions_lists = OpenPositionsList.all
    @open_positions_lists = OpenPositionsList.order(sort_column + " " + sort_direction)
    @open_positions_lists = OpenPositionsList.where(nil)
    filtering_params(params).each do |key, value|
      @open_positions_lists = @open_positions_lists.public_send(key, value) if value.present?
    end

  end

  # GET /open_positions_lists/1
  # GET /open_positions_lists/1.json
  def show
  end

  # GET /open_positions_lists/new
  def new
    @open_positions_list
  end

  # GET /open_positions_lists/1/edit
  def edit
  end

  # POST /open_positions_lists
  # POST /open_positions_lists.json
  def create
    @open_positions_list = OpenPositionsList.new(open_positions_list_params)

    respond_to do |format|
      if @open_positions_list.save
        format.html { redirect_to open_positions_lists_path, notice: 'OPL Eintrag wurde erfolgreich erstellt.' }
        format.json { render :show, status: :created, location: open_positions_lists_path }
      else
        format.html { render :new }
        format.json { render json: @open_positions_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_positions_lists/1
  # PATCH/PUT /open_positions_lists/1.json
  def update
    respond_to do |format|
      if @open_positions_list.update(open_positions_list_params)
        format.html { redirect_to open_positions_lists_path, notice: 'Open positions list was successfully updated.' }
        format.json { render :show, status: :ok, location: open_positions_lists_path }
      else
        format.html { render :edit }
        format.json { render json: @open_positions_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_positions_lists/1
  # DELETE /open_positions_lists/1.json
  def destroy
    @open_positions_list.destroy
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
      @open_positions_list = OpenPositionsList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_positions_list_params
      params.require(:open_positions_list).permit(:shortlist, :number, :summary, :description, :option, :component, :category, :prio, :responsible, :state, :costmodel, :affects_version, :issue_ticket, :ticket_text, :notes, :in_sprint, :client)
    end
    
    def open_position_list_number_new
      @open_positions_list = OpenPositionsList.last
      if @open_positions_list == nil
        @open_positions_list = OpenPositionsList.new
        @open_positions_list.number = 1
      else
        @open_positions_list = OpenPositionsList.new
        @open_positions_list.number = OpenPositionsList.last[:number] += 1
      end
    end
end
