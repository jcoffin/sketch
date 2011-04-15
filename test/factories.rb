Factory.define :page, :class => Sketch::Page do |f|
end

Factory.define :home_page, :parent => :page do |f|
  f.title "Site Name - Home"
end
