class ListingsController < ApplicationController
  # GET /listings
  # GET /listings.json
  def index
    @listings = Listing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @listings }
    end
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @listing = Listing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @listing }
    end
  end
  
  
  def sample_listing
    @listingAddress = "1924 Pine Street, Boulder CO 80302"
  end

  # GET /listings/new
  # GET /listings/new.json
  def new
    #@listing = Listing.new
    if session[:listing_id]
      @listing = Listing.find(session[:listing_id])
    else
      redirect_to root_url, notice: "Invalid Listing ID"
    end
  end
  
  def new2
    if session[:listing_id]
      @listing = Listing.find(session[:listing_id])
    else
      redirect_to root_url, notice: "Invalid Listing ID"
    end
  end
  
  # GET /listings/1/edit
  def edit
    @listing = Listing.find(params[:id])
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.create(customCode: params[:customCode])
    session[:listing_id] = @listing.id
    redirect_to new_listing_path
  end

  # PUT /listings/1
  # PUT /listings/1.json
  def update
    @listing = Listing.find(params[:id])

    respond_to do |format|
      if @listing.update_attributes(params[:listing])
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    respond_to do |format|
      format.html { redirect_to listings_url }
      format.json { head :no_content }
    end
  end
end
