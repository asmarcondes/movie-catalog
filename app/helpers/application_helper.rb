module ApplicationHelper
  PAGES = {
    '/movies' => 'Movies',
    '/actors' => 'Actors',
    '/reviews' => 'Reviews',
    '/logs' => 'Logs'
  }.freeze

  def active_class(path)
    return 'bg-gray-900 text-white' if request.path == path

    'text-gray-300 hover:bg-gray-700 hover:text-white'
  end

  def active_page
    PAGES[request.path]
  end
end
