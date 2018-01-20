# expose uniqueness attributes in Judge in here with the following syntax
#
# Judge.configure do
#   expose Model1, :attr
#   expose Model2, :attr1, :attr2
# end

Judge.configure do
  expose Recipe, :slug
  expose Recipe, :title
  expose Category, :slug
  expose Category, :title
end
