class RecipeboxesController < ApplicationController

  def index
    @recipeboxes = Recipebox.all
  end

  def show
    @recipebox = Recipebox.find(params[:id])
  end

  def new
    @recipebox = Recipebox.new
  end

  def create
    @user = User.new(user_params)
  end


  def create
    @recipebox = Recipebox.new(params[:recipebox].permit(:title, :text))
    #sending notification so that the user can see the message
    if @recipebox.save
      flash[:success] = "You have created your recipe successfully!"
      redirect_to @recipebox
    else
      flash[:notice] = "Invalid Recipe. Please try again."
      render 'new'
    end
  end
end

def edit
  @recipebox = Recipebox.find(params[:id])
end

def update
  @recipebox = Recipebox.find(params[:id])
  if @recipebox.update(recipebox_params)
    flash[:success] = "Your recipe was updated successfully!"
    redirect_to recipebox_path(@recipebox)
  else
    flash[:notice] = " Please try again."
    render 'create'
  end
end


def destroy
  @recipebox = Recipebox.find(params[:id])
  @recipebox.destroy
  flash[:notice] = "Recipe deleted"
  redirect_to recipeboxes_path
end

private
def user_params
  params.require(:user).permit(:email, :password, :password_digest)
end

def set_recipebox
  @recipebox = Recipebox.find(params[:id])
end

def recipebox_params
  params.require(:recipebox).permit(:title, :servings, :prep_time, :cook_time, :user_id, :instruction, :picture)
end
