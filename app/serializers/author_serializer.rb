class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile
  has_many :posts
    class PostSerializer < ActiveModel::Serializer
      attributes :title, :short_content, :tags

      def short_content
        "#{object.content[0..39]}..."
     end
    end

end
