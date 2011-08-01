module VideosHelper
  def sanitize_embed_code(video)
    sanitize video.emebed_code, :tags => ['iframe']
  end
end
