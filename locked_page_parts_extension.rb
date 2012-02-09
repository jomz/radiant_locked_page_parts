require 'radiant-locked_page_parts-extension'

class LockedPagePartsExtension < Radiant::Extension
  version RadiantLockedPagePartsExtension::VERSION
  description RadiantLockedPagePartsExtension::DESCRIPTION
  url RadiantLockedPagePartsExtension::URL
  
  def activate    
    admin.page.edit.add :part_controls, 'lock_page_part'
    admin.page.edit.add :main, 'locked_page_style'
  end
  
end
