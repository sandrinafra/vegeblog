class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:home, :show]
  before_action :require_admin, except: [:home, :show]
  # GET /articles
  # GET /articles.json
  def home
    @articles = Article.online

    # choix des photos pour le carrousel
    nb_max = @articles.count - 1
    @nb1 = rand(0..nb_max)
    @nb2 = rand(0..nb_max)
    @nb3 = rand(0..nb_max)

    if nb_max > 1
      while @nb2 == @nb1 do
        @nb2 = rand(0..nb_max)
      end
      while @nb3 == @nb2 || @nb3 == @nb1 do
        @nb3 = rand(0..nb_max)
      end
    end
  end

  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @comment = Comment.new
    @like = Like.new
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Votre article à bien été crée' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Votre article a bien été mis à jour' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Votre article a bien été supprimé' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :text, :image, :status, :content)
    end
end
