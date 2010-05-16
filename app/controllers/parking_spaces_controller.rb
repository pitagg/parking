class ParkingSpacesController < ApplicationController
  # GET /parking_spaces
  # GET /parking_spaces.xml
  def index
    @parking_spaces = ParkingSpace.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @parking_spaces }
    end
  end

  # GET /parking_spaces/1
  # GET /parking_spaces/1.xml
  def show
    @parking_space = ParkingSpace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @parking_space }
    end
  end

  # GET /parking_spaces/new
  # GET /parking_spaces/new.xml
  def new
    @parking_space = ParkingSpace.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @parking_space }
    end
  end

  # GET /parking_spaces/1/edit
  def edit
    @parking_space = ParkingSpace.find(params[:id])
  end

  # POST /parking_spaces
  # POST /parking_spaces.xml
  def create
    @parking_space = ParkingSpace.new(params[:parking_space])

    respond_to do |format|
      if @parking_space.save
        flash[:notice] = 'ParkingSpace was successfully created.'
        format.html { redirect_to(@parking_space) }
        format.xml  { render :xml => @parking_space, :status => :created, :location => @parking_space }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @parking_space.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parking_spaces/1
  # PUT /parking_spaces/1.xml
  def update
    @parking_space = ParkingSpace.find(params[:id])

    respond_to do |format|
      if @parking_space.update_attributes(params[:parking_space])
        flash[:notice] = 'ParkingSpace was successfully updated.'
        format.html { redirect_to(@parking_space) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @parking_space.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_spaces/1
  # DELETE /parking_spaces/1.xml
  def destroy
    @parking_space = ParkingSpace.find(params[:id])
    @parking_space.destroy

    respond_to do |format|
      format.html { redirect_to(parking_spaces_url) }
      format.xml  { head :ok }
    end
  end
end
