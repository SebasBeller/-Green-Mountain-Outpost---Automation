require 'net/http'

After do 
  Capybara.current_session.driver.quit
end

Before do
page.driver.browser.manage.window.maximize
end


Before do
  unless internet_available?
    raise 'No hay conexión a Internet. Deteniendo pruebas.'
  end
end

def internet_available?
  begin
    uri = URI(Capybara.app_host)
    response = Net::HTTP.get_response(uri)
    response.is_a?(Net::HTTPSuccess) || response.is_a?(Net::HTTPRedirection)
  rescue SocketError, Errno::ECONNREFUSED
    false
  end
end
