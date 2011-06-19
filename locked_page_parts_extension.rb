class LockedPagePartsExtension < Radiant::Extension
  version "0.1.9"
  description "Allows you to hide certain page parts from normal users"
  url "https://github.com/jomz/radiant_locked_page_parts"
  
  def activate    
    admin.page.edit.add :part_controls, 'lock_page_part'
    admin.page.edit.add :main, 'locked_page_style'
  end
  
  def deactivate
    # admin.tabs.remove "Locked Page Parts"
  end
  
end
