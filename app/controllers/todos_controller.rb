class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  respond_to :html


  # GET /todos
  # GET /todos.json
  def index
    @todos = Todo.all
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
  end

  # GET /todos/new
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos
  # POST /todos.json

    def create

    @todo = Todo.new
    if @todo.save(todo_params)
      flash[:notice] = "Successfully created todo!"
      @todo.update(todo_current_user_params)
       redirect_to '/'
    else
      @todos = Todo.all
      flash[:alert] = "Error creating new todo!"
      redirect_to root_path(@todos)
    end




  end

  # PATCH/PUT /todos/1
  # PATCH/PUT /todos/1.json
  def update

    respond_to do |format|
      if @todo.update(todo_current_user_params)
        format.html { redirect_to '/', notice: 'Todo was successfully ' }

      else
        format.html { render '/'}
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
    @todo = Todo.destroy(params[:id])
    @todo.destroy
    if session[:current_request_url] == 'todos'
      'todos'
      flash[:notice] = "Todo was successfully destroyed."
    else
    respond_to do |format|
      format.html { redirect_to '/', notice: 'Todo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    def add_user_to_todo
     @user = params[:user_id]
     @todo = params[:id]
     @user.todos << @todo
   end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit( :title, :description,:marketing, :finished, :leads, :personal, :deals, :user_id)
    end
     def todo_current_user_params
      params.require(:todo).permit( :title, :description, :finished, :marketing, :leads, :personal, :deals).merge(user_id: current_user.id)
    end

end
