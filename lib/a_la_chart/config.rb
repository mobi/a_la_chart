module ALaChart
  module Config
    # Internally, this config is represented as:
    #  config = {
    #    :fusion => {
    #      :default => :v31,
    #      :v3_1 => {
    #        :format => 'xml',
    #        :pie => {
    #          :data => 'pie.xml.builder',
    #          :chart_type => 'Pie2D',
    #          :remote => 'remote.html.erb',
    #          :inline => 'inline.html.erb'
    #        }
    #      }
    #    }
    #  }
    # Internal configs can be overridden in rails environment configs. For example,
    # to use a custom :inline ERB template (paths are based on RAILS_ROOT):
    # 
    #  ALaChart::Config[:fusion][:v3_1][:pie][:data] = 'app/views/reports/a_la_chart/custom_inline.html.erb'
    # 
    # Then just copy the original template from the gem config dir, and make the desired changes
    def self.config
      unless defined?(@@data)
        require 'yaml'
    
        def self.recursive_symbolize_keys!(hash)
          hash.symbolize_keys!
          hash.values.select{|v| v.is_a?(Hash)}.each{|h| recursive_symbolize_keys!(h)}
        end
        
        @@data = {}

        Dir.foreach(File.expand_path('../../../configs',  __FILE__)) do |dir|
          config_path = File.expand_path("../../../configs/#{dir}/config.yml",  __FILE__)
          if File.exists?(config_path)
            make = dir.to_sym
            yaml_data = YAML.load_file(config_path)
            # Deep clone the yaml data
            @@data[make] = Marshal::load(Marshal.dump(yaml_data))
            self.recursive_symbolize_keys!(@@data[make])
          end
        end
      end
      @@data
    end
    
    def self.[](make)
      self.config[make.to_sym]
    end

    def self.[]=(key, value)
      self.config unless defined?(@@data) # init the config
      @@data[key.to_sym] = value
    end
    
    
    def self.keys
      self.config.keys
    end
  end
end
