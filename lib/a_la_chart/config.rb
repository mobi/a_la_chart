module ALaChart
  module Config
    
    def self.data
      @@data
    end
    @@data = {}
    
    def self.makes
      @@makes
    end
    @@makes = {}
    
    # @@fusion = {
    #   # :default => :v31,
    #   :v3_1 => {
    #     :format => 'xml',
    #     :angular => {
    #       :data => 'angular.xml.builder',
    #       :chart_type => 'AngularGauge',
    #       :remote => 'remote.html.erb',
    #       :inline => 'inline.html.erb'
    #     },
    #     # :bar => {
    #     #   :data => 'bar.xml.builder',
    #     #   :chart_type => 'Bar2D',
    #     #   :d3 => 'Bar3D',
    #     #   :remote => 'remote.html.erb',
    #     #   :inline => 'inline.html.erb'
    #     # },
    #     # :bullet => {
    #     #   :data => 'bullet.xml.builder',
    #     #   :chart_type => 'HBullet',
    #     #   :vertical => 'VBullet',
    #     #   :remote => 'remote.html.erb',
    #     #   :inline => 'inline.html.erb'
    #     # },
    #     # :column => {
    #     #   data: 'column.xml.builder',
    #     #   :chart_type => 'Column2D'
    #     #   :d3 => 'Column3D',
    #     #   :remote => 'remote.html.erb',
    #     #   :inline => 'inline.html.erb'
    #     # },
    #     # :line => {
    #     #   :data => 'line.xml.builder',
    #     #   :chart_type => 'Line2D',
    #     #   :d3 => 'Line3D',
    #     #   :remote => 'remote.html.erb',
    #     #   :inline => 'inline.html.erb'
    #     # },
    #     # :pie => {
    #     #   :data => 'pie.xml.builder',
    #     #   :chart_type => 'Pie2D',
    #     #   :d3 => 'Pie3D',
    #     #   :remote => 'remote.html.erb',
    #     #   :inline => 'inline.html.erb'
    #     # },
    #     # :stacked_column => {
    #     #   :data => 'stacked_column.xml.builder',
    #     #   :chart_type => 'StackedColumn2D',
    #     #   :d3 => 'StackedColumn3D',
    #     #   :remote => 'remote.html.erb',
    #     #   :inline => 'inline.html.erb'
    #     # },
    #     # :spark_line => {
    #     #   :data => 'spark_line.xml.builder',
    #     #   :chart_type => 'SparkLine',
    #     #   :remote => 'remote.html.erb',
    #     #   :inline => 'inline.html.erb'
    #     # },
    #     # :spark_column => {
    #     #   :data => 'spark_column.xml.builder',
    #     #   :chart_type => 'SparkColumn',
    #     #   :remote => 'remote.html.erb',
    #     #   :inline => 'inline.html.erb'
    #     # },
    #     # :spark_win_loss => {
    #     #   :data => 'spark_win_loss.xml.builder',
    #     #   :chart_type => 'SparkWL',
    #     #   :remote => 'remote.html.erb',
    #     #   :inline => 'inline.html.erb'
    #     # },
    #     # :pyramid => {
    #     #   :data => 'pyramid.xml.builder',
    #     #   :chart_type => 'Pyramid',
    #     #   :remote => 'remote.html.erb',
    #     #   :inline => 'inline.html.erb'
    #     # },
    #     # :funnel => {
    #     #   :data => 'funnel.xml.builder',
    #     #   :chart_type => 'Funnel',
    #     #   :remote => 'remote.html.erb',
    #     #   :inline => 'inline.html.erb'
    #     # }
    #   }
    # }
  end
end

# ALaChart::Config.fusion[:v31][:format][:angular][:data]
# ALaChart::Config.makes = [:fusion]
