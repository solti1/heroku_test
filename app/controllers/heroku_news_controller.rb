class HerokuNewsController < ApplicationController
  before_action :set_heroku_news, only: [:show, :edit, :update, :destroy]

  # GET /heroku_news
  # GET /heroku_news.json
  def index
    @heroku_news = HerokuNew.all
  end

  # GET /heroku_news/1
  # GET /heroku_news/1.json
  def show
  end

  # GET /heroku_news/new
  def new
    @heroku_news = HerokuNew.new
  end

  # GET /heroku_news/1/edit
  def edit
  end

  # POST /heroku_news
  # POST /heroku_news.json
  def create
    @heroku_news = HerokuNew.new(heroku_news_params)

    respond_to do |format|
      if @heroku_news.save
        format.html { redirect_to @heroku_news, notice: 'Heroku new was successfully created.' }
        format.json { render :show, status: :created, location: @heroku_news }
      else
        format.html { render :new }
        format.json { render json: @heroku_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heroku_news/1
  # PATCH/PUT /heroku_news/1.json
  def update
    respond_to do |format|
      if @heroku_news.update(heroku_news_params)
        format.html { redirect_to @heroku_news, notice: 'Heroku new was successfully updated.' }
        format.json { render :show, status: :ok, location: @heroku_news }
      else
        format.html { render :edit }
        format.json { render json: @heroku_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heroku_news/1
  # DELETE /heroku_news/1.json
  def destroy
    @heroku_news.destroy
    respond_to do |format|
      format.html { redirect_to heroku_news_url, notice: 'Heroku new was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heroku_news
      @heroku_news = HerokuNew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heroku_news_params
      params.require(:heroku_news).permit(:title, :description)
    end
end
