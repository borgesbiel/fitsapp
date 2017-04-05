class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super do
      resource.type = params[:user][:type]
      resource.save
    end
  end

  def update
    super
  end
end
