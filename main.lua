function love.load()
    gameData = {}
    gameData.gameWidth = 720
    gameData.gameHeight = 720
    gameData.gameName = "Burger Clicker: LOVE Edition"
    gameData.burgers = 0
    gameData.clicks = 0
    gameData.backgrounds = {}
    gameData.backgrounds.mainBG = love.graphics.newImage('assets/sprites/background.png')

    burger = {}
    burger.sprite = love.graphics.newImage('assets/sprites/burger.png')
    burger.clickSound = love.audio.newSource('assets/sfx/burger.wav', "stream")
    burger.x = (gameData.gameWidth / 2) - (burger.sprite:getWidth() / 2)
    burger.y = (gameData.gameHeight / 2) - (burger.sprite:getHeight() / 2)

    love.window.setMode(gameData.gameWidth, gameData.gameHeight, {resizable=false})
    love.window.setTitle(gameData.gameName)
end

function love.draw()
    love.graphics.draw(gameData.backgrounds.mainBG, 0, 0)
    love.graphics.draw(burger.sprite, burger.x, burger.y)
end

function love.update(dt)

end

function love.keypressed(key)
    if key == 'space' then
        gameData.burgers = gameData.burgers + 1
        love.audio.play(burger.clickSound)
    end
end