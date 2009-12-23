module PagePartsControllerExtensions
  
  def lock
    current_object.update_attribute(:locked, true)
    redirect_to :back
  end

  def unlock
    current_object.update_attribute(:locked, false)
    redirect_to :back
  end
  
end