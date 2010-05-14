class VehicleTypesController < ApplicationController
  # GET /vehicle_types
  # GET /vehicle_types.xml
  def index
    @vehicle_types = VehicleType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vehicle_types }
    end
  end

  # GET /vehicle_types/1
  # GET /vehicle_types/1.xml
  def show
    @vehicle_type = VehicleType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vehicle_type }
    end
  end

  # GET /vehicle_types/new
  # GET /vehicle_types/new.xml
  def new
    @vehicle_type = VehicleType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vehicle_type }
    end
  end

  # GET /vehicle_types/1/edit
  def edit
    @vehicle_type = VehicleType.find(params[:id])
  end

  # POST /vehicle_types
  # POST /vehicle_types.xml
  def create
    @vehicle_type = VehicleType.new(params[:vehicle_type])

    respond_to do |format|
      if @vehicle_type.save
        flash[:notice] = 'VehicleType was successfully created.'
        format.html { redirect_to(@vehicle_type) }
        format.xml  { render :xml => @vehicle_type, :status => :created, :location => @vehicle_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vehicle_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vehicle_types/1
  # PUT /vehicle_types/1.xml
  def update
    @vehicle_type = VehicleType.find(params[:id])

    respond_to do |format|
      if @vehicle_type.update_attributes(params[:vehicle_type])
        flash[:notice] = 'VehicleType was successfully updated.'
        format.html { redirect_to(@vehicle_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vehicle_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_types/1
  # DELETE /vehicle_types/1.xml
  def destroy
    @vehicle_type = VehicleType.find(params[:id])
    @vehicle_type.destroy

    respond_to do |format|
      format.html { redirect_to(vehicle_types_url) }
      format.xml  { head :ok }
    end
  end
end
