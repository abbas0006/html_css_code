require_relative '../html_css_code.rb'
require_relative '../scraper.rb'

class LittleWebHut
  def call
    puts "welcome to Little Web Hut"
    puts "1. list all HTML tags"
    puts "2. list all CSS properties"
    puts "3. exit"
    puts "please choose an option\n"
    option=gets.strip
    scraper=Scraper.new
    if option =="1"
      puts "Listing HTML tags ...."
       scraper.get_html_tags
     HTMLTag.print_all
    elsif option =="2"
      puts "Listing CSS properties ...."
      puts ""
      scraper.get_css_properties
      Css.print_all

    else
      exit
  end
end
end
