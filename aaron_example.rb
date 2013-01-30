dep 'llvm in path' do
  met? { which 'llvm-gcc-4.2' }
  meet {
    cd('/usr/local/bin') {|path|
      shell "ln -s /Developer/usr/llvm-gcc-4.2/bin/llvm* .", :sudo => !path.writable?
    }
  }
end
