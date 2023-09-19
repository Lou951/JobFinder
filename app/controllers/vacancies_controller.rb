class VacanciesController < ApplicationController

  def index
    @vacancies = Vacancy.all
  end
end
#   def index
#     @vacancies = Vacancy.all
#     if params[:query].present?
#       sql_query = <<~SQL
#       vacancy.job_title ILIKE :query
#       OR vacancy.job_location ILIKE :query
#       OR vacancy.description ILIKE :query
#       SQL
#       @vacancies = Vacancy.where(sql_query, query: "%#{params[:query]}%")
#     else
#       @vacancies = Vacancy.all
#   end

#   def show
#       @vacancy = Vacancy.find(params[:id])
#       # @booking = Booking.new
#   end

#   def new
#       @vacancy = Vacancy.new
#   end

#   def create
#       @vacancy = Vacancy.new(vacancy_params)
#       @vacancy.user = current_user
#       if @vacancy.save
#         redirect_to vacancy_path(@vacancy), notice: 'Your vacancy was successfully created.'
#       else
#         render :new, status: :unprocessable_entity, notice: 'The vacancy was not created.'
#       end
#   end

#   def edit
#       @vacancy = Vacancy.find(params[:id])
#   end

#   def update
#       @vacancy = Vacancy.find(params[:id])
#       @vacancy.update(vacancy_params)
#       redirect_to vacancy_path(@vacancy)
#   end

#   def destroy
#       @vacancy = Vacancy.find(params[:id])
#       @vacancy.destroy
#       redirect_to my_vacancies_path(current_user), status: :see_other
#   end

#   def myislands
#       @user_vacancies = Vacancy.where(user_id: current_user)
#   end

#   private

#   def vacancy_params
#       params.require(:vacancy).permit(:job_title, :job_description, :job_location, :job_salary)
#   end
# end
# end
