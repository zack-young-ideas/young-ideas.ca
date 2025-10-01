require 'json'

module Jekyll
  class PostsJsonFile < Jekyll::StaticFile
    def write(dest)
      true
    end
  end

  class PostsJsonGenerator < Generator
    safe true
    priority :low

    def generate(site)
      posts_data = site.posts.docs.map do |post|
        {
          "title"    => post.data['title'],
          "uid"       => post.data['uid'],
          "subtitle" => post.data['subtitle'] || "",
          "date"     => post.date.strftime("%B %e, %Y"),
          "image"    => post.data['image'] || "",
          "keywords" => extract_keywords(post)
        }
      end

      json_output = JSON.pretty_generate(posts_data)

      dir = "assets"
      name = "posts.json"
      path = File.join(site.dest, dir, name)

      FileUtils.mkdir_p(File.dirname(path))
      File.write(path, json_output)

      site.static_files << PostsJsonFile.new(site, site.dest, dir, name)
    end

    private

    def extract_keywords(post)
      text = post.content.downcase
      words = text.gsub(/[^a-z0-9\s]/i, '').split(/\s+/)

      stop_words = %w[the a an and or but if in on at to for of is are was were be by with this that from it as]
      keywords = words.reject { |w| stop_words.include?(w) || w.length < 3 }
      freq = Hash.new(0)
      keywords.each { |w| freq[w] += 1 }
      freq.sort_by { |_, count| -count }.map(&:first).take(50)
    end
  end
end
