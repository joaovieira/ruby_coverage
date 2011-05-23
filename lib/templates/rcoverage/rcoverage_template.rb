require 'fileutils'
require 'syntax/convertors/html'

class RcoverageTemplate < MetricFu::Template

  def write
    # Getting rid of the crap before and after the project name from integrity
    @name = File.basename(Dir.pwd).gsub(/^\w+-|-\w+$/, "")

    report.each_pair do |section, contents|
      if template_exists?(section)
        create_instance_var(section, contents)
        create_instance_var(:per_file_data, per_file_data)
        html = erbify(section)
        fn = output_filename(section)
        MetricFu.report.save_output(html, MetricFu.output_directory, fn)
      end
    end
  end

  def this_directory
    File.dirname(__FILE__)
  end
end

