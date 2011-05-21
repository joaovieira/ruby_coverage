class MetricFu::FlogBluffGrapher
  def graph!
    if File.basename(MetricFu.output_directory) == 'ruby_complexity'
      content = <<-EOS
        var g = new Bluff.Line('Complexity', '420x252');
        g.theme_pastel();
        g.tooltips = true;
        g.legend_font_size = '7px';
        g.marker_font_size = '4px';
        g.hide_title = 'true';
        g.data('average', [#{@flog_average.join(',')}]);
        g.data('top 5%', [#{@top_five_percent_average.join(',')}])
        g.labels = #{@labels.to_json};
        g.draw();
      EOS

      File.open(File.join(MetricFu.output_directory, 'flog.js'), 'w') {|f| f << content }
    end
  end
end
