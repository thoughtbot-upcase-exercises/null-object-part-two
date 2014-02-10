class User
  include ActiveModel::Model
  attr_accessor :created_at, :credit_card, :subscription

  FREE_TRIAL = 'Free Trial'
  NO_PLAN = 'No Plan'

  def charge
    unless subscription.nil?
      subscription.charge(credit_card)
    end
  end

  def has_mentoring?
    free_trial? || subscription && subscription.has_mentoring?
  end

  def price
    if free_trial? || subscription.nil?
      0
    else
      subscription.price
    end
  end

  def plan_name
    if free_trial?
      FREE_TRIAL
    elsif subscription
      subscription.plan_name
    else
      NO_PLAN
    end
  end

  private

  def free_trial?
    created_at >= 30.days.ago
  end
end
