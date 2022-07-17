class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :get_subforum

  # GET /posts or /posts.json
  def index
    @posts = @sub_forum.posts
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = @sub_forum.posts.build
    #@sub_forum = SubForum.find(params[:sub_forum_id])
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    # @post = current_user.posts.build(post_params)
    @post = @sub_forum.posts.create(post_params)
    
    @post.create_time = Time.now
    @post.user_id = current_user.id
    
    # @post = @sub_forum.posts.create(post_params)
    # flash[:success] = "Post was successfully created!"
    redirect_to @sub_forum
    # redirect_to @post

    # respond_to do |format|
    #   if @post.save
    #     # redirect to the index view of the selected sub_forum's posts
    #     format.html { redirect_to sub_forum_path(@sub_forum), notice: "Post was successfully created." }
    #     format.json { render :show, status: :created, location: @post }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @post.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to sub_forum_post_path(@sub_forum), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # get the subforum that post is associated to 
    def get_subforum
      @sub_forum = SubForum.find(params[:sub_forum_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = @sub_forum.posts.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :content)
      # params.require(:post).permit(:title, :user_id, :create_time, :content, :sub_forum_id, :comment_ids, :post)
    end

end
