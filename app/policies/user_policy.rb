class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def user_owns_profile?
    user == record
  end

  def update?
    user == record
  end

  def edit?
    user == record
  end
end
