module Vercel
  VERSION = '0.4.2' unless defined?(VERSION)

  class << self
    def version
      VERSION
    end

    def summary
      <<~____
        write backends systems for your vercel application in ruby
      ____
    end

    def description
      <<~____
      - clean serverless functions
      - run ruby functions locally
      - test your serverless functions
      ____
    end

    def libs
      %w[
      ]
    end

    def dependencies
      {
        #'map' => ['map', '~> 6.6', '>= 6.6.0'],
        #'fattr' => ['fattr', '~> 2.4', ' >= 2.4.0'],
      }
    end

    def libdir(*args, &block)
      @libdir ||= File.dirname(File.expand_path(__FILE__))
      args.empty? ? @libdir : File.join(@libdir, *args)
    ensure
      if block
        begin
          $LOAD_PATH.unshift(@libdir)
          block.call
        ensure
          $LOAD_PATH.shift
        end
      end
    end

    def load(*libs)
      libs = libs.join(' ').scan(/[^\s+]+/)
      libdir { libs.each { |lib| Kernel.load(lib) } }
    end

    def load_dependencies!
      libs.each do |lib|
        require lib
      end

      begin
        require 'rubygems'
      rescue LoadError
        nil
      end

      has_rubygems = defined?(gem)

      dependencies.each do |lib, dependency|
        gem(*dependency) if has_rubygems
        require(lib)
      end
    end
  end
end
