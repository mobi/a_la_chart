xml.chart(chart_options(:fusion, :line).merge(:caption => params[:title])) do
  the_case = params[:case]
  xml.categories do
    data(the_case).map{|record| value(record, :label, the_case) }.uniq.compact.each do |label|
      xml.category :label => label
    end
  end
  data_by_category = {}
  data(the_case).each do |record|
    (data_by_category[value(record, :category, the_case)] ||= []) << record
  end
  data_by_category.keys.sort.each do |category|
    records = data_by_category[category]
    xml.dataset(:seriesName => category, :color => value(records.first, :color, the_case) || color_palette_next(:fusion, :stacked_column)) do
      records.each do |record|
        xml.set :value => value(record, :value, the_case), :toolText => "#{value(record, :category, the_case)}: #{'%0.2f' % value(record, :value, the_case)}"
      end
    end
  end
end

# <chart showValues='0' numberPrefix='$' decimals='3' setAdaptiveYMin='1' setAdaptiveSYMin='1' lineThickness='5'>
# <categories>
# <category name='Oct 2009'></category>
# <category name='Nov 2009'></category>
# <category name='Dec 2009'></category>
# <category name='Jan 2010'></category>
# </categories>
# <dataset seriesname='Spend' renderAs='Line'> 
# <set value='46148'></set>
# <set value='44158'></set>
# <set value='43214'></set>
# <set value='25560'></set>
# </dataset>
# <dataset parentYAxis='S' seriesname='Lines' renderAs='Line'>
# <set value='436'></set>
# <set value='447'></set>
# <set value='485'></set>
# <set value='468'></set>
# </dataset> 
# </chart>


# xml.chart(chart_options(:fusion, :line).merge(:caption => params[:title])) do
#   the_case = params[:case]
#   xml.dataset do |dataset|
#     data(the_case).each do |set|
#       xml.set :value => set
#     end
#   end
# end
