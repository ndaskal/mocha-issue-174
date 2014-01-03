class BsController < ApplicationController
  # GET /bs
  # GET /bs.json
  def index
    @bs = B.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bs }
    end
  end

  # GET /bs/1
  # GET /bs/1.json
  def show
    @b = B.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @b }
    end
  end

  # GET /bs/new
  # GET /bs/new.json
  def new
    @b = B.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @b }
    end
  end

  # GET /bs/1/edit
  def edit
    @b = B.find(params[:id])
  end

  # POST /bs
  # POST /bs.json
  def create
    @b = B.new(params[:b])

    respond_to do |format|
      if @b.save
        format.html { redirect_to @b, notice: 'B was successfully created.' }
        format.json { render json: @b, status: :created, location: @b }
      else
        format.html { render action: "new" }
        format.json { render json: @b.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bs/1
  # PUT /bs/1.json
  def update
    @b = B.find(params[:id])

    respond_to do |format|
      if @b.update_attributes(params[:b])
        format.html { redirect_to @b, notice: 'B was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @b.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bs/1
  # DELETE /bs/1.json
  def destroy
    @b = B.find(params[:id])
    @b.destroy

    respond_to do |format|
      format.html { redirect_to bs_url }
      format.json { head :no_content }
    end
  end
end
