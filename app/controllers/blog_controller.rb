class BlogController < ApplicationController
  before_action :find_id_blog, only: [:show, :edit, :update, :destroy]
  
  def index
    @blogs = Blog.all

  end

  def new
    @blog = Blog.new
    
  end

  def create
    @blog = Blog.new(blog_params)
    
    if @blog.save
      redirect_to blog_index_path, notice: "El blog ha sido guardado exitosamente"
      #flash[:notice] = "El blog ha sido gusrdado exitosamente"
    else
      flash[:alert] = "El blog no ha sido guardado, favor repetir la informacion"
      reder :new
    end 
  end

  def show

  end

  def edit
    
  end

  def update
    
    if @blog.update(blog_params)
      redirect_to blog_index_path
    else
      render :edit
    end
  end

  def destroy
    
    @blog.destroy

    redirect_to blog_index_path    
  end


  private
    def blog_params
      params.require(:blog).permit(:title, :content)
  end
  
  def find_id_blog
    @blog = Blog.find(params[:id])
    
  end




end
