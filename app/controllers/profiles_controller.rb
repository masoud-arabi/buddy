class ProfilesController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    if current_user.update(user_params) && current_user.update(user_priority_params)
      redirect_to profiles_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :photo,
      :first_name,
      :last_name,
      :email,
      :phone_number,
      :city_address,
      :country_select,
      :background,
      :diploma,
      :field_of_studies,
      :start_date,
      :end_date,
      :desciption,
      :values,
      :priority
    )
  end

  def user_priority_params
    j = [:job_search, :industry, :location]
    i = [:prio_1, :prio_2, :prio_3]
    index = 0
    hash = {}
    j.each do |j_variable|
      i.each do |i_variable|
        result = params.require(:user)[:priority][j_variable].permit(i_variable)
        index += 1
      hash.store(index, result)
      end
    end
  end
end
