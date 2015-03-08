
def foo(ary)
h = Hash.new(0)


  ary.each do |x|  
    domain = x.split("@").last
     h.key?(domain)
     h[domain] += 1
  end
  print h
end
mails=%w(taro@sample.jp nancy@sample.com jiro@sample.jp hermes@synm.jp saburo@sample.jp) #ここにメールアドレスを入れる
foo(mails)
