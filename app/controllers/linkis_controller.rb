
class LinkisController < ApplicationController
  # GET /linkis
  # GET /linkis.json
  def index
    @linkis = Linki.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @linkis }
    end
  end

  # GET /linkis/1
  # GET /linkis/1.json
  def show
    @linki = Linki.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @linki }
    end
  end

  # GET /linkis/new
  # GET /linkis/new.json
  def new
    @linki = Linki.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @linki }
    end
  end

  # GET /linkis/1/edit
  def edit
    @linki = Linki.find(params[:id])
  end

  # POST /linkis
  # POST /linkis.json
  def create
    @linki = Linki.new(params[:linki])

    respond_to do |format|
      if @linki.save
        format.html { redirect_to @linki, notice: 'Linki was successfully created.' }
        format.json { render json: @linki, status: :created, location: @linki }
      else
        format.html { render action: "new" }
        format.json { render json: @linki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /linkis/1
  # PUT /linkis/1.json
  def update
    @linki = Linki.find(params[:id])

    respond_to do |format|
      if @linki.update_attributes(params[:linki])
        format.html { redirect_to @linki, notice: 'Linki was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @linki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linkis/1
  # DELETE /linkis/1.json
  def destroy
    @linki = Linki.find(params[:id])
    @linki.destroy

    respond_to do |format|
      format.html { redirect_to linkis_url }
      format.json { head :no_content }
    end
  end
end
