class LeasesController < ApplicationController
  # GET /leases
  # GET /leases.xml
  def index
    @leases = Lease.page params[:page]
    @conditions = Condition.where(:lease_id => @lease)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @leases }
    end
  end

  # GET /leases/1
  # GET /leases/1.xml
  def show
    @lease = Lease.find(params[:id])
    @conditions = Condition.where(:lease_id => @lease)

    respond_to do |format|
      format.html # show.html.erb
      format.js # show.js.erb
      format.xml  { render :xml => @lease }
    end
  end

  # GET /leases/new
  # GET /leases/new.xml
  def new
    @lease = Lease.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lease }
    end
  end

  # GET /leases/1/edit
  def edit
    @lease = Lease.find(params[:id])
  end

  # POST /leases
  # POST /leases.xml
  def create
    @lease = Lease.new(params[:lease])

    respond_to do |format|
      if @lease.save
        format.html { redirect_to(@lease, :notice => 'Lease was successfully created.') }
        format.xml  { render :xml => @lease, :status => :created, :location => @lease }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lease.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /leases/1
  # PUT /leases/1.xml
  def update
    @lease = Lease.find(params[:id])

    respond_to do |format|
      if @lease.update_attributes(params[:lease])
        format.html { redirect_to(@lease, :notice => 'Lease was successfully updated.') }
        format.js   # update.js.html
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.js   # update.js.html
        format.xml  { render :xml => @lease.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /leases/1
  # DELETE /leases/1.xml
  def destroy
    @lease = Lease.find(params[:id])
    @lease.destroy

    respond_to do |format|
      format.html { redirect_to(leases_url) }
      format.xml  { head :ok }
    end
  end
end
