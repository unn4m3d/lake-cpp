class CCompiler
  attr_accessor :flags,:compiler,:shared
  def initialize(compiler:"gcc",flags:"")
    @flags,@compiler = flags,compiler
  end

  def system(code)
    puts code
    super code
  end

  def compile(source,output=nil,object=false)
    output ||= File.basename(source,".*") + ".out"
    system "#{@compiler} #{@flags} #{object ? "-c" : ""}  -o \"#{output}\" \"#{source}\""
  end

  def link(*files,output)
    system "#{@compiler} #{@flags} -o \"#{output}\" #{files.inject(""){|a,b| a + "\"#{b}\" "}}"
  end
end
