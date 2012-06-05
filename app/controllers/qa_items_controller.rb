class QaItemsController < ApplicationController
  # GET /qa_items
  # GET /qa_items.json
  def index
    @qa_items = QaItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qa_items }
    end
  end

  # GET /qa_items/1
  # GET /qa_items/1.json
  def show
    @qa_item = QaItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qa_item }
    end
  end

  # GET /qa_items/new
  # GET /qa_items/new.json
  def new
    @qa_item = QaItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qa_item }
    end
  end

  # GET /qa_items/1/edit
  def edit
    @qa_item = QaItem.find(params[:id])
  end

  # POST /qa_items
  # POST /qa_items.json
  def create
    @qa_item = QaItem.new(params[:qa_item])

    respond_to do |format|
      if @qa_item.save
        format.html { redirect_to @qa_item, notice: 'Qa item was successfully created.' }
        format.json { render json: @qa_item, status: :created, location: @qa_item }
      else
        format.html { render action: "new" }
        format.json { render json: @qa_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qa_items/1
  # PUT /qa_items/1.json
  def update
    @qa_item = QaItem.find(params[:id])

    respond_to do |format|
      if @qa_item.update_attributes(params[:qa_item])
        format.html { redirect_to @qa_item, notice: 'Qa item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qa_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qa_items/1
  # DELETE /qa_items/1.json
  def destroy
    @qa_item = QaItem.find(params[:id])
    @qa_item.destroy

    respond_to do |format|
      format.html { redirect_to qa_items_url }
      format.json { head :no_content }
    end
  end
end
