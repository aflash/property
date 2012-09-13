class MaintenanceSchedulesController < ApplicationController
  # GET /maintenance_schedules
  # GET /maintenance_schedules.xml
  def index
    @maintenance_schedules = MaintenanceSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @maintenance_schedules }
    end
  end

  # GET /maintenance_schedules/1
  # GET /maintenance_schedules/1.xml
  def show
    @maintenance_schedule = MaintenanceSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @maintenance_schedule }
    end
  end

  # GET /maintenance_schedules/new
  # GET /maintenance_schedules/new.xml
  def new
    @maintenance_schedule = MaintenanceSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @maintenance_schedule }
    end
  end

  # GET /maintenance_schedules/1/edit
  def edit
    @maintenance_schedule = MaintenanceSchedule.find(params[:id])
  end

  # POST /maintenance_schedules
  # POST /maintenance_schedules.xml
  def create
    @maintenance_schedule = MaintenanceSchedule.new(params[:maintenance_schedule])

    respond_to do |format|
      if @maintenance_schedule.save
        format.html { redirect_to(@maintenance_schedule, :notice => 'Maintenance schedule was successfully created.') }
        format.xml  { render :xml => @maintenance_schedule, :status => :created, :location => @maintenance_schedule }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @maintenance_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /maintenance_schedules/1
  # PUT /maintenance_schedules/1.xml
  def update
    @maintenance_schedule = MaintenanceSchedule.find(params[:id])

    respond_to do |format|
      if @maintenance_schedule.update_attributes(params[:maintenance_schedule])
        format.html { redirect_to(@maintenance_schedule, :notice => 'Maintenance schedule was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @maintenance_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenance_schedules/1
  # DELETE /maintenance_schedules/1.xml
  def destroy
    @maintenance_schedule = MaintenanceSchedule.find(params[:id])
    @maintenance_schedule.destroy

    respond_to do |format|
      format.html { redirect_to(maintenance_schedules_url) }
      format.xml  { head :ok }
    end
  end
end
