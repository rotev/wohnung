class AirBnb

  CONTAINER = "#room"

  def self.parse_doc(doc, url)
    container = doc.css(CONTAINER)

    result = {
      extid: url.split("?").first.split("/").last.to_i,
      title: container.css("#listing_name").first.content,
      images: parse_images(container),
      property: container.css("#description_details tr:first-child td:nth-child(2)").first.content,
      size: "", #container.css(".objnr + tr + tr td:nth-child(2)").first.content,
      price: container.css("#price_amount").first.content,
      location: container.css("#display-address").first.content
    }
  end

  private

  def self.parse_images(container)
    container.css("#slideshow ul li a").map do |node|
      img = node.css("img").first
      {
        url: node.attr("href"),
        thumb: img.attr("src"),
        alt: img.attr("alt")
      }
    end
  end

end