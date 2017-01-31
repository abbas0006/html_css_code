require 'open-uri'
require 'nokogiri'
require_relative './html_css_code.rb'
require_relative './html_css_code/css.rb'

class Scraper

  def get_page(url)
    open(url)
  end
  def get_html_tags
    doc=Nokogiri::HTML(get_page("http://www.littlewebhut.com/html/"))
    doc.css("nav ul span").each do |e|
     if e.text.start_with?("<")
        name=e.text
        tag_element=Nokogiri::HTML(get_page("http://www.littlewebhut.com/html/#{name.gsub(/[<>]/,"")}_tag"))
        syntax= tag_element.css("pre.samplecode").first.text
        html_tag=HTMLTag.new(name,syntax)

        puts "#{html_tag.name} : #{html_tag.syntax} "
       end
    end
  end
  def get_css_properties
    doc=Nokogiri::HTML(get_page("http://www.littlewebhut.com/css/"))
    doc.css("div.quicktagref table td").each do |e|
    Css.new(e.text)
    end
  end
end
