GreenOnion.configure do |c|
  c.skins_dir = './spec/skins'
  c.driver = :selenium
  c.dimensions = {
    :width => 1024,
    :height => 768
  }
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host = 'http://localhost:8000'
end

def create_screenshots
  GreenOnion.skin_visual('http://localhost:8000/index.html')
end

def start_server_thread
  @server_thread = Thread.new do
    root = Dir.pwd
    server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root
    trap 'INT' do server.shutdown end
    server.start
  end
  sleep 2
end

def exit_server_thread
  @server_thread.exit
end

RSpec.configure do |config|
  config.before(:all) do
    start_server_thread
    Capybara.current_session.driver.browser.manage.window.resize_to(1024, 768)
    create_screenshots
  end

  config.after(:all) do
    exit_server_thread
  end
end