require 'vnu'
require 'json'

class VnuCheck < ::HTMLProofer::Check
  def run
    errors = Vnu.validate(@html, errors_only: true, format: 'json')

    if errors
      JSON.parse(errors)['messages'].each do |error|
        add_issue(error['message'], line: error['lastLine'])
      end
    end
  end
end
