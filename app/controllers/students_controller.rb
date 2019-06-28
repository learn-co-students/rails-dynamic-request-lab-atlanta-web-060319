class StudentsController < ApplicationController
  def index
    @students = Student.all
    render :index
  end

  def new
    @students = Student.new
    render :new
  end 

  def create
    @student = Student.create(first_name: params[:student][:first_name],last_name: params[:student][:last_name])
    render :show
  end 

  def show
    @student = Student.find(params[:id])
    render :show
  end 


end