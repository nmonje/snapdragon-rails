class BurstsController < ApplicationController
  # GET /bursts
  # GET /bursts.xml
  def index
    @bursts = Burst.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bursts }
    end
  end

  # GET /bursts/1
  # GET /bursts/1.xml
  def show
    @burst = Burst.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @burst }
    end
  end

  # GET /bursts/new
  # GET /bursts/new.xml
  def new
    @burst = Burst.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @burst }
    end
  end

  # GET /bursts/1/edit
  def edit
    @burst = Burst.find(params[:id])
  end

  # POST /bursts
  # POST /bursts.xml
  def create
    @burst = Burst.new(params[:burst])

    respond_to do |format|
      if @burst.save
        format.html { redirect_to(@burst, :notice => 'Burst was successfully created.') }
        format.xml  { render :xml => @burst, :status => :created, :location => @burst }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @burst.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bursts/1
  # PUT /bursts/1.xml
  def update
    @burst = Burst.find(params[:id])

    respond_to do |format|
      if @burst.update_attributes(params[:burst])
        format.html { redirect_to(@burst, :notice => 'Burst was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @burst.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bursts/1
  # DELETE /bursts/1.xml
  def destroy
    @burst = Burst.find(params[:id])
    @burst.destroy

    respond_to do |format|
      format.html { redirect_to(bursts_url) }
      format.xml  { head :ok }
    end
  end
end
