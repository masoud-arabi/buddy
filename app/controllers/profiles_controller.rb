class ProfilesController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    priority_updated = false
    user_priority_params["priority"].values.each do |priority|
      if priority["id"] == "nil"
        priority = Priority.new(priority)
        priority.user = current_user
        priority.save!
        priority_updated = true
      else
        new_priority = Priority.find(priority["id"])
        new_priority.update(priority)
        priority_updated = true
      end
    end
    if current_user.update(user_params) || priority_updated
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
      :values
    )
  end

  def user_priority_params
    params.require(:user).permit(priority: { prio_1: {}, prio_2: {}, prio_3: {} })
  end
end
