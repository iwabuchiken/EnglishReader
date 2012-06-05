class TransController < ApplicationController
  def main
    # render json: WordSet.where("text_id = ?", 4)
    if params['word_id'] != nil
      word_id = params['word_id'].to_i
    else
      word_id = 1
    end
    
    # Resource => http://stackoverflow.com/questions/10681816/render-json-instead-of-html-as-default
    render json: WordSet.where("id = ?", word_id).first()
    # render html: WordSet.where("id = ?", word_id).first().jp
    # render json: WordSet.where("id = ?", word_id).first()
    
    # # render "TransController"
    # # @target_word_set = WordSet.where("text_id = ?", 4).first()
    # @target_word_set = WordSet.where("text_id = ?", 4)
#     
    # # Respond
    # respond_to do |format|
      # format.html
      # format.json { render json: @target_word_set }
    # end
  end

  def show
  end
end
