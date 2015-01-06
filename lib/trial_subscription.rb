class TrialSubscription
  def charge(credit_card)
    false
  end

  def has_mentoring?
    true
  end

  def price
    0
  end

  def plan_name
    "Free Trial"
  end
end
