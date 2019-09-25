class PostsController < ApplicationController
  def index
    @posts = Post.all
	if params[:id] != nil
	  @post =Post.find_by(id:params[:id])
	    elsif params[:heading] == nil
		  if Post.find_by(id:1) == nil
            firstCreate
          end			
	      @post =Post.first
	end
  end



  def firstCreate
  @post = Post.create(id:1,heading:"Welcome railsmemo!",subheading:"first",content_1:"first",content_2:"first")
  end
  
  


=begin

	 
	 
	 elsif params[:id] == nil
	 @post = Post.new(id:1,heading:"non",subheading:"non",content_1:"non",content_2:"non")
     @post.save
	 
	 
=end

  def show
    @posts = Post.all
	if params[:id] != nil
	  @post =Post.find_by(id:params[:id])
	    elsif params[:heading] == nil
		  if Post.find_by(id:1) == nil
            firstCreate
          end			
	      @post =Post.first
	end
  end



  def new
  end


  
  def create
    @post =Post.new(
	heading:	params[:heading],
	subheading:	params[:subheading],
	content_1:	params[:content_1],
	content_2:	params[:content_2])
    @post.save

    redirect_to("/posts/index")
  end



 def edit
  @post = Post.find_by(id:params[:id])
 end



  def update
   @post = Post.find_by(id: params[:id])
   @post.heading = params[:heading]
   @post.subheading = params[:subheading]
   @post.content_1= params[:content_1]
   @post.content_2 = params[:content_2]
   @post.save	
   redirect_to("/posts/index")
  end



  def destroy
   @post = Post.find_by(id: params[:id])
   @post.destroy
   redirect_to("/posts/index")
  end



end