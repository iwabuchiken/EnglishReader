class TextsController < ApplicationController
  # GET /texts
  # GET /texts.json
  def index
    @texts = Text.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @texts }
    end
  end

  # GET /texts/1
  # GET /texts/1.json
  def show
    @text = Text.find(params[:id])
    
    # Get text from Text
    text_text = @text.text
    
    # Get the word sets
    word_sets_special = WordSet.where('text_id = ?', @text.id)
    
    # Initialize modified text
    @modified_text = text_text
    
    # Build text
    word_sets_special.each do |word_set|
      @modified_text = @modified_text.sub( \
                  word_set.en, \
                  "<span class='translate' id='word_" + word_set.id.to_s + "'>" + \
                  word_set.en + "</span>")
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @text }
    end
  end

  # GET /texts/new
  # GET /texts/new.json
  def new
    @text = Text.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @text }
    end
  end

  # GET /texts/1/edit
  def edit
    @text = Text.find(params[:id])
  end

  # POST /texts
  # POST /texts.json
  def create
    @text = Text.new(params[:text])

    respond_to do |format|
      if @text.save
        format.html { redirect_to @text, notice: 'Text was successfully created.' }
        format.json { render json: @text, status: :created, location: @text }
      else
        format.html { render action: "new" }
        format.json { render json: @text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /texts/1
  # PUT /texts/1.json
  def update
    @text = Text.find(params[:id])

    respond_to do |format|
      if @text.update_attributes(params[:text])
        format.html { redirect_to @text, notice: 'Text was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /texts/1
  # DELETE /texts/1.json
  def destroy
    @text = Text.find(params[:id])
    @text.destroy
    
    # Related word sets
    @word_sets_special = WordSet.where("text_id = ?", params[:id])
    
    @word_sets_special.each do |word_set|
      # @text.update_attributes(params[:text])
      # word_set.text_id = 0
      word_set.update_attribute(:text_id, 0)
    end

    respond_to do |format|
      format.html { redirect_to texts_url }
      format.json { head :no_content }
    end
  end

  def get_translation
    print "get_translation"
  end
  

end
