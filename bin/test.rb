require 'rexml/document'
include REXML

input = File.new("test.xml")
doc = Document.new(input)
root = doc.root

doc.elements.each('*/args/arg') {|em|
  args {
    em.attributes['key'] => em.attributes['value']
  }
  puts args
}

