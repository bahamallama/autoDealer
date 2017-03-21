module ApplicationHelper
  def human_boolean(boolean)
      boolean ? 'Yes' : 'No'
  end
  
  def finance_and_warranty
    if (@site.financeImage? && @site.warrantyImage?)
      html = "<div class='col-md-6 center-block' style='float:none; display:inline-block; vertical-align:middle; margin-right:-4px;'>"
      html.html_safe
    else
      html = "<div class='col-md-12 center-block' style='float:none; display:inline-block; vertical-align:middle; margin-right:-4px;'>"
      html.html_safe
    end
  end
end
