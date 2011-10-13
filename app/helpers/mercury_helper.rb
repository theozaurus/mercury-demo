module MercuryHelper
  
  #
  # Collection of very simple methods to aid marking up docs
  # for being mercury editable. More proof of concept than
  # proper implementation
  # 
  
  def mercury_editor_link(name, link = nil, options = {})
    link ||= request.fullpath
    options.merge!(
      :class => "mercury-edit-toggle #{options[:class]}".strip,
      :'data-finish-editing' => "Finish editing"
    )
    link_to name, mercury_editor_path( link.sub(/^\//,'') ), options
  end
  
  def mercury_editable_region_for(record, attribute, options = {})
    key = ActiveModel::Naming.param_key(record)
    name = "#{key}[#{attribute}]"
    
    options.merge!(
      :class => "mercury-region #{options[:class]}".strip,
      :'data-name' => name,
      :'data-type' => 'editable'
    )

    content_tag( "div", record[attribute].html_safe, options )
  end
  
  
end
