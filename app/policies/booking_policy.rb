class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def update?
    user_is_owner?
  end

  def destroy?
    (record.user == user) || (record.space.user == user)
  end

  private

  def user_is_owner?
    record.user == user
  end
end
