class LockedPagePartsExtension < Radiant::Extension
  version "0.1.9"
  description "Allows you to hide certain page parts from normal users"
  url "https://github.com/jomz/radiant_locked_page_parts"
  
  def activate
    # extend parts controller with lock and unlock methods;
    Admin::PagePartsController.class_eval do
      include PagePartsControllerExtensions
    end
    
    admin.page.edit.add :part_controls, 'lock_page_part'
    admin.page.edit.add :main, 'locked_page_style'
  end
  
  def deactivate
    # admin.tabs.remove "Locked Page Parts"
  end
  
end
