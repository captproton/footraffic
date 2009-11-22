module BusinessesHelper
  
# gchart (=> googlecharts gem) has methods that return a GoogleChart API url
require 'gchart'
require 'open-uri'

###
# Chart drawing methods
###

CHART_SIZE = '300x150' # This is dimensions constants for the charts 'width'x'height'

  # Method to make 'number_to_currency' easier
  def to_cur(number)
    number_to_currency(number, :format => "%n")
  end

  # Method to pass either number (with precision) or "N/A" string
  def num_with_prec_or_string(number, precision)
    return number if number.kind_of? String
    number_with_precision(number, precision)
  end

###  
# Temporary fake charts; hardcoded data, etc.
###  
  
  # Consumer growth chart
  
  def subscriber_growth_chart
    Gchart.line(:size => CHART_SIZE,
                :title => 'FootTraffic subscribers',
                :data => [50, 200, 1000, 3500, 10000, 24000],
                :line_colors => 'navy',
                :bg => 'white',
                :axis_with_labels => 'x',
                :axis_labels => ['Jan','Feb','Mar','Apr','May','Jun'],
                :custom => 'chm=B, 76A4FB, 0, 0, 0')
  end
  
  # Daily Local Traffic bar chart
  
  def daily_local_traffic_chart
    Gchart.bar(:size => CHART_SIZE,
               :title => 'Average Daily Local Traffic',
               :data => [2,0,0,1,0,2,8,26,20,18,12,14,32,28,12,15,20,14,20,32,36,22,8,4],
               :axis_with_labels => 'x',
               :axis_labels => ['12AM','6AM','12PM','6PM'],
               :bar_width_and_spacing => 5,
               :bar_colors => 'blue',
               :bg => 'white')
  end

  # Sent-viewed pie chart

  def offers_viewed_pie_chart
    Gchart.pie(:size => CHART_SIZE,
               :data => [75,150],
               :title => 'Offers Sent and Viewed',
               :labels => ['Sent and Viewed', 'Sent Not Viewed'])
  end
  
#  def line
#    Gchart.line(:title => 'FootTraffic',
#      :data => [[1,2,4,67,100,41,234],[41,63,96,17,100,14,423]],
#      :bg => '666666',
#      :graph_bg => 'cccccc',
#      :line_colors => 'ff0000,00ff00',
#      :legend => ['morning','evening'])
#  end

end
