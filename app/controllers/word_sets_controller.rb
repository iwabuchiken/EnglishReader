class WordSetsController < ApplicationController
  # GET /word_sets
  # GET /word_sets.json
  def index
    @word_sets = WordSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @word_sets }
    end
  end

  # GET /word_sets/1
  # GET /word_sets/1.json
  def show
    @word_set = WordSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @word_set }
    end
  end

  # GET /word_sets/new
  # GET /word_sets/new.json
  def new
    # @word_set = WordSet.new
    if params['text_id'] != nil
      # @word_set = WordSet.new("", "", "", params['text_id'])
      # @word_set = WordSet.new(params['text_id'])
      @word_set = WordSet.new
      @word_set.text_id = params['text_id'].to_i
    else
      @word_set = WordSet.new
    end


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @word_set }
    end
  end

  # GET /word_sets/1/edit
  def edit
    @word_set = WordSet.find(params[:id])
  end

  # POST /word_sets
  # POST /word_sets.json
  def create
    @word_set = WordSet.new(params[:word_set])

    respond_to do |format|
      if @word_set.save
        format.html { redirect_to @word_set, notice: 'Word set was successfully created.' }
        format.json { render json: @word_set, status: :created, location: @word_set }
      else
        format.html { render action: "new" }
        format.json { render json: @word_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /word_sets/1
  # PUT /word_sets/1.json
  def update
    @word_set = WordSet.find(params[:id])

    respond_to do |format|
      if @word_set.update_attributes(params[:word_set])
        format.html { redirect_to @word_set, notice: 'Word set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @word_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_sets/1
  # DELETE /word_sets/1.json
  def destroy
    @word_set = WordSet.find(params[:id])
    @word_set.destroy

    respond_to do |format|
      format.html { redirect_to word_sets_url }
      format.json { head :no_content }
    end
  end
end
