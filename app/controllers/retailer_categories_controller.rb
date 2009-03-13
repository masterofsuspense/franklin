class RetailerCategoriesController < ApplicationController
  # GET /retailer_categories
  # GET /retailer_categories.xml
  def index
    @retailer_categories = RetailerCategory.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @retailer_categories }
    end
  end

  # GET /retailer_categories/1
  # GET /retailer_categories/1.xml
  def show
    @retailer_category = RetailerCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @retailer_category }
    end
  end

  # GET /retailer_categories/new
  # GET /retailer_categories/new.xml
  def new
    @retailer_category = RetailerCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @retailer_category }
    end
  end

  # GET /retailer_categories/1/edit
  def edit
    @retailer_category = RetailerCategory.find(params[:id])
  end

  # POST /retailer_categories
  # POST /retailer_categories.xml
  def create
    @retailer_category = RetailerCategory.new(params[:retailer_category])

    respond_to do |format|
      if @retailer_category.save
        flash[:notice] = 'RetailerCategory was successfully created.'
        format.html { redirect_to(@retailer_category) }
        format.xml  { render :xml => @retailer_category, :status => :created, :location => @retailer_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @retailer_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /retailer_categories/1
  # PUT /retailer_categories/1.xml
  def update
    @retailer_category = RetailerCategory.find(params[:id])

    respond_to do |format|
      if @retailer_category.update_attributes(params[:retailer_category])
        flash[:notice] = 'RetailerCategory was successfully updated.'
        format.html { redirect_to(@retailer_category) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @retailer_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /retailer_categories/1
  # DELETE /retailer_categories/1.xml
  def destroy
    @retailer_category = RetailerCategory.find(params[:id])
    @retailer_category.destroy

    respond_to do |format|
      format.html { redirect_to(retailer_categories_url) }
      format.xml  { head :ok }
    end
  end
end
