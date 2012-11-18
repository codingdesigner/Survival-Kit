#
# Methods placed in this module can be used inside of any view.
# View helpers allow you to encapsalate complex logic and keep your
# views pristine.
#
module ViewHelpers

  # Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      "#{start_year}"
    else
      "#{start_year}&#8211;#{end_year}"
    end
  end

  # Handy for hiding a block of unfinished code
  def hidden(&block)
    #no-op
  end

  # Add your own helpers below...
  def pattern_primer
    output = ""
    Dir.foreach(Dir.pwd + '/patterns/') do |fname|
      next if fname == '.' or fname == '..' or fname == '.DS_Store'
        # output += File.read(File.join('patterns/', fname))
        filename = fname.sub('.html', '')
        output += '<div class="element" id="'+ filename +'-el">'
          output += '<h2 class="element-title">'+ filename +'</h2>'
          output += '<div class="example">'
            output += '<div class="markup">'
              output += File.read(File.join('patterns/', fname))
            output += '</div>'
          output += '</div>'
        output += '</div>'
    end
    "#{output}"
  end

end
