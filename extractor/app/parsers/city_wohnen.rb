class CityWohnen

  CONTAINER = "#page_body_main_content"

  def self.parse_doc(doc)
    container = doc.css(CONTAINER)

    result = {
      extid: container.css(".objnr strong").first.content,
      title: container.css("h1").first.content,
      images: parse_images(container),
      property: container.css(".objnr + tr td:nth-child(2)").first.content,
      size: container.css(".objnr + tr + tr td:nth-child(2)").first.content,
      price: container.css(".ciwo_object tr:nth-child(15) td:nth-child(2)").first.content
    }
  end

  private

  def self.parse_images(container)
    container.css(".thumbs a").map do |node|
      {
        url: node.attr("href"),
        thumb: node.css("img").first.attr("src")
      }
    end
  end
end