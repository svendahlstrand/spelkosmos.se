require 'vnu'
require 'json'

class VnuCheck < ::HTMLProofer::Runner
  def run
    error = Vnu.validate(@html, errors_only: true, format: 'json')

    if error
      JSON.parse(error)['messages'].each do |error|
        add_issue(error['message'], error['lastLine'])
      end
    end
  end
end
