class PropertiesController < ApplicationController
  # GET /properties
  # GET /properties.xml
  def index
    @properties = Property.page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @properties }
    end
  end

  # GET /properties/1
  # GET /properties/1.xml
  def show
    @property = Property.find(params[:id])
    @leases   = Lease.where(:property_id => @property).page(params[:page])
    lease_ids = @property.leases.collect(&:id)

    @tenants  = Tenant.where(:lease_id => lease_ids).page(params[:page])
    @type_code = Code.
      select('id,code,description').
      where('prefix = "TYPE"')

    respond_to do |format|
      format.html # show.html.erb
      format.js
      format.xml  { render :xml => @property }
    end
  end

  # GET /properties/new
  # GET /properties/new.xml
  def new
    @property = Property.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @property }
    end
  end

  # GET /properties/1/edit
  def edit
    @property = Property.find(params[:id])
  end

  # POST /properties
  # POST /properties.xml
  def create
    @property = Property.new(params[:property])

    respond_to do |format|
      if @property.save
        format.html { redirect_to(@property, :notice => 'Property was successfully created.') }
        format.xml  { render :xml => @property, :status => :created, :location => @property }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @property.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /properties/1
  # PUT /properties/1.xml
  def update
    @property = Property.find(params[:id])

    respond_to do |format|
      if @property.update_attributes(params[:property])
        format.html { redirect_to(@property, :notice => 'Property was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @property.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.xml
  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    respond_to do |format|
      format.html { redirect_to(properties_url) }
      format.xml  { head :ok }
    end
  end
 
  def list
    list = []
    properties = Rates::Property.where("valuation_id LIKE ?", "#{params[:term]}%").limit(10)
    properties.each do |property|
      list << {
        'value' => property.valuation_id,
        'label' => "#{property.valuation_id} #{property.location}"
      }
    end

    respond_to do |format|
      format.json { render :json => list.to_json, :layout => false }
    end
  end

  def location
    location = Rates::Property.where("valuation_id = ?", "#{params[:term]}")

    respond_to do |format|
      format.json { render :json => location.first.location.to_json, :layout => false }
    end
  end

  def gl_list
    list = []
    general_ledger = GeneralLedger::Account.where("gl_id LIKE ?", "#{params[:term]}%").limit(10)
    general_ledger.each do |gl|
      list << {
        'value' => gl.gl_unique_id,
        'label' => "#{gl.gl_id} #{gl.name}"
      }
    end

    respond_to do |format|
      format.json { render :json => list.to_json, :layout => false }
    end
  end
end
