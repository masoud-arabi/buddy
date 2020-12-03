class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    i = [1, 2, 3]
    priority_updated = false
    user_priority_params["priority"].values.each do |priority|
      # priority.values.each do |variable|
      #   variable.update(job_search)
      # end
      if priority["id"] == "nil"
        new_priority = Priority.new(
          job_search: priority["job_search"],
          industry: priority["industry"],
          location: priority["location"],
          position: i.slice!(0)
        )
        new_priority.user = current_user
        new_priority.save!
        priority_updated = true
      else
        update_priority = Priority.find(priority["id"].to_i)
        update_priority.job_search = priority["job_search"]
        update_priority.industry = priority["industry"]
        update_priority.location = priority["location"]
        update_priority.position = i.slice!(0)

        update_priority.save!
        priority_updated = true
      end
    end
    if @user.update(user_params) || priority_updated
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
      :description,
      :values
    )
  end

  def user_priority_params
    params.require(:user).permit(priority: { prio_1: {}, prio_2: {}, prio_3: {} })
  end
end
