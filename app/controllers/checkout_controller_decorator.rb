Spree::CheckoutController.class_eval do
  def before_single_step_checkout
    @order.bill_address ||= Spree::Address.default(@order.user)
    @order.ship_address ||= Spree::Address.default(@order.user, 'ship')
  end
end
