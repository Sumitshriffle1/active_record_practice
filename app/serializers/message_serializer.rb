class MessageSerializer < ActiveModel::Serializer
  attributes :id, :images
  def images
    object.images.map do |data|
      data.url
    end
  end
end
