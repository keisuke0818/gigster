module ApplicationHelper

  def br(text)
    return text if text.blank?
    sanitize text.gsub(/\r\n|\r|\n/, "<br />"), :tag => %w(br)
  end

  def cut_off(text, len)
    if text != nil
      if text.length < len
        text
      else
        text.scan(/^.{#{len}}/m)[0] + '...'
      end
    else
      ''
    end
  end

end
