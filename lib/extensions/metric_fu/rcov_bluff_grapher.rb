require 'metric_fu'
require 'ruby_coverage'

class MetricFu::RcovBluffGrapher
  def graph!
    if File.basename(MetricFu.output_directory) == RubyCoverage::ANALYSER.underscore
      content = <<-EOS
        var g = new Bluff.Line('#{RubyCoverage::NAME}', '550x330');
        g.theme_pastel();
        g.tooltips = true;
        g.hide_title = 'true';
        g.data('rcov', [#{@rcov_percent.join(',')}]);
        g.labels = #{@labels.to_json}
        ;
        g.draw();
      EOS
      File.open(File.join(MetricFu.output_directory, 'rcov.js'), 'w') {|f| f << content }
    end
  end
end
