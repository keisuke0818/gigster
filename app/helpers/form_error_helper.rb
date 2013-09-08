# -*- coding: utf-8 -*-

module FormErrorHelper
  def error_tag(resource, field)
    unless resource.errors[field].empty?
      msg = resource.errors.full_message(field, resource.errors[field].join(", "))
      content_tag(:span, msg, class: 'attention validation_message')
    end
  end
end
