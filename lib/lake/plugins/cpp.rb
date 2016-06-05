class CCompiler
  attr_accessor :flags,:compiler
  def initialize(compiler:"gcc",flags:"")
    @flags,@compiler = flags,compiler
  end

  def system(code)
    puts code
    super code
  end

  def compile(source,output=nil)
    output ||= File.basename(source,".*") + ".out"
    system "#{@compiler} #{@flags} -o \"#{output}\" \"#{source}\""
  end
end
