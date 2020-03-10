Before do
    @loginPage = LoginPage.new
    @sideBarPage = SideBarView.new
    @moviePage = MoviePage.new

    page.current_window.resize_to(1366, 768)
    # page.driver.browser.manage.window.maximize
end

Before('@login') do
    usuario = CONFIG["users"]["gestor"]
    @loginPage.go
    @loginPage.logar(usuario["email"], usuario["senha"])
end

After do |scenario|
    screenshot = page.save_screenshot("log/screenshot/#{scenario.__id__}.png")
    embed(screenshot, "image/png", "Screenshot")

    # relatório local
    # tempShot = page.save_screenshot("log/tempShot.png")
    # screeshot = Base64.encode64(File.open(tempShot).read)
    # embed(screeshot, "image/png", "Print_da_tela")
end