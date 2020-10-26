# Code Along: Media
# Raphael Adams

module AcceptsComments
    def comments
        @comments ||= []
    end

    def add_comment(comment)
        comments << comment
    end
end

class Clip
    attr_reader :comments

    def play
        puts "Playing #{ object_id }..."
    end
end

class Video < Clip
    include AcceptsComments
    attr_accessor :resolution
end

class Song < Clip
    include AcceptsComments
    attr_accessor :beats_per_minute
end

class Photo
    include AcceptsComments
    def show
        puts "Displaying #{ object_id }..."
    end
end

video = Video.new
video.add_comment("Cool slow motion effect")
video.add_comment("Weird ending")
song = Song.new
song.add_comment("Awesome beat")
photo = Photo.new
photo.add_comment("Beautiful colours")

p video.comments, song.comments, photo.comments
video.play
song.play
photo.show