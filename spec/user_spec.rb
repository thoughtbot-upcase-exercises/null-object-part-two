require 'spec_helper'

describe User do
  describe '#charge' do
    it 'charges its subscription to its credit card' do
      credit_card = double('credit_card')
      subscription = double('subscription')
      allow(subscription).to receive(:charge)
      user = build_user(subscription: subscription, credit_card: credit_card)

      user.charge

      expect(subscription).to have_received(:charge).with(credit_card)
    end

    it 'does nothing without a subscription' do
      credit_card = double('credit_card')
      user = build_user(subscription: nil, credit_card: credit_card)

      expect { user.charge }.not_to raise_error
    end
  end

  describe '#has_mentoring?' do
    it 'delegates to its subscription after the free trial' do
      has_mentoring = double('has_mentoring?')
      subscription = double('subscription', has_mentoring?: has_mentoring)
      user = build_user(subscription: subscription, free_trial: false)

      expect(user.has_mentoring?).to eq(has_mentoring)
    end

    it 'returns true during the free trial period' do
      user = build_user(subscription: nil, free_trial: true)

      expect(user.has_mentoring?).to be_truthy
    end

    it 'returns false without a subscription after the free trial' do
      user = build_user(subscription: nil, free_trial: false)

      expect(user.has_mentoring?).to be_falsey
    end
  end

  describe '#price' do
    it 'delegates to its subscription after the free trial' do
      price = double('price')
      subscription = double('subscription', price: price)
      user = build_user(subscription: subscription, free_trial: false)

      expect(user.price).to eq(price)
    end

    it 'returns zero without a subscription after the free trial' do
      user = build_user(subscription: nil, free_trial: false)

      expect(user.price).to eq(0)
    end

    it 'returns zero during the free trial' do
      subscription_price = double('subscription_price')
      subscription = double('subscription', price: subscription_price)
      user = build_user(subscription: subscription, free_trial: true)

      expect(user.price).to eq(0)
    end
  end

  describe '#plan_name' do
    it 'delegates to its subscription after the free trial' do
      plan_name = double('plan_name')
      subscription = double('subscription', plan_name: plan_name)
      user = build_user(subscription: subscription, free_trial: false)

      expect(user.plan_name).to eq(plan_name)
    end

    it 'returns "Free Trial" during the free trial' do
      plan_name = double('subscribed_plan_name')
      subscription = double('subscription', plan_name: plan_name)
      user = build_user(subscription: subscription, free_trial: true)

      expect(user.plan_name).to eq(User::FREE_TRIAL)
    end

    it 'returns "No Plan" after the free trial without a subscription' do
      user = build_user(subscription: nil, free_trial: false)

      expect(user.plan_name).to eq(User::NO_PLAN)
    end
  end

  def build_user(overrides = {})
    User.new(
      subscription: overrides[:subscription],
      created_at: overrides[:created_at] || default_created_at(overrides),
      credit_card: overrides[:credit_card] || double('credit_card')
    )
  end

  def default_created_at(overrides)
    if overrides[:free_trial]
      29.days.ago
    else
      31.days.ago
    end
  end
end
