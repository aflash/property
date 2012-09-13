class CodePrefixesController < ApplicationController
  # GET /code_prefixes
  # GET /code_prefixes.xml
  def index
    @code_prefixes = CodePrefix.page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @code_prefixes }
    end
  end

  # GET /code_prefixes/1
  # GET /code_prefixes/1.xml
  def show
    @code_prefix = CodePrefix.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @code_prefix }
    end
  end

  # GET /code_prefixes/new
  # GET /code_prefixes/new.xml
  def new
    @code_prefix = CodePrefix.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @code_prefix }
    end
  end

  # GET /code_prefixes/1/edit
  def edit
    @code_prefix = CodePrefix.find(params[:id])
  end

  # POST /code_prefixes
  # POST /code_prefixes.xml
  def create
    @code_prefix = CodePrefix.new(params[:code_prefix])

    respond_to do |format|
      if @code_prefix.save
        format.html { redirect_to(@code_prefix, :notice => 'Code prefix was successfully created.') }
        format.xml  { render :xml => @code_prefix, :status => :created, :location => @code_prefix }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @code_prefix.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /code_prefixes/1
  # PUT /code_prefixes/1.xml
  def update
    @code_prefix = CodePrefix.find(params[:id])

    respond_to do |format|
      if @code_prefix.update_attributes(params[:code_prefix])
        format.html { redirect_to(@code_prefix, :notice => 'Code prefix was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @code_prefix.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /code_prefixes/1
  # DELETE /code_prefixes/1.xml
  def destroy
    @code_prefix = CodePrefix.find(params[:id])
    @code_prefix.destroy

    respond_to do |format|
      format.html { redirect_to(code_prefixes_url) }
      format.xml  { head :ok }
    end
  end
end
