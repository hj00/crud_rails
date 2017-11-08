class PostController < ApplicationController
    def index
         @posts = Post.all
    end
    
    def create
        @title = params[:title]
        @content = params[:content]
        
        Post.create(
            title: @title,
            content: @content
        )
        
        redirect_to '/'
    end
    
    def destroy
        # 지울 글을 찾는다.
        @id = params[:id]
        post = Post.find(@id)
        # 해당 글을 지운다.
        post.destroy
    end
    
    def show
        @id = params[:id]
        @all = Post.find(@id)
    end
    
    # def bupdate
    #     @id = params[:id]
    #     @uall = Post.find(@id)
    #     # user.update(name: 'Dave')
    # end
    
    # def updated
    #     @id = params[:id]
    #     @ntitle = params[:ntitle]
    #     @ncontent = params[:ncontent]
    #     new = Post.find(@id)
    #     new.update(title: @ntitle, content: @ncontent)
    #     redirect_to '/'
    # end
    
    def modify
        @id = params[:id]
        @post = Post.find(@id)
    end
    
    def update
        @id = params[:id]
        @post = Post.find(@id)
        @post.update(title: params[:title], content: params[:content])
        redirect_to '/'
    end
    
end
