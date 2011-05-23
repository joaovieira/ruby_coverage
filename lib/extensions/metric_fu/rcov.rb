require 'metric_fu'

class MetricFu::Rcov

    def emit
      unless MetricFu.rcov[:external]
        FileUtils.rm_rf(MetricFu::Rcov.metric_directory, :verbose => false)
        Dir.mkdir(MetricFu::Rcov.metric_directory)
        test_files = FileList[*MetricFu.rcov[:test_files]].join(' ')
        rcov_opts = MetricFu.rcov[:rcov_opts].join(' ')
	project_dir = File.join(MetricFu.base_directory, '..')
        output = ">> #{MetricFu::Rcov.metric_directory}/rcov.txt"
        puts "** Running the specs/tests in the [#{MetricFu.rcov[:environment]}] environment"
        `cd #{project_dir}; RAILS_ENV=#{MetricFu.rcov[:environment]} rcov #{test_files} #{rcov_opts} #{output}`
      end
    end
  
end
