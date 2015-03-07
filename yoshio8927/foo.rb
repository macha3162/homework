def foo(ary)
  h = {}
  ary.each do |x|
    domain = x.split("@")[1]
    if h.key?(domain)
      h[domain] += 1
    else
      h[domain] = 1
    end
  end
  print h
end

mails=[] #ここにメールアドレスを入れる
foo(mails)
