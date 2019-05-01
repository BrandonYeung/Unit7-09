-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Brandon Yeung
-- Created on: May 1, 2019
-- 
-- This file animates a charact using a spritesheet
-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)
 
centerX = display.contentWidth * .5
centerY = display.contentHeight * .5

local sheetOptionsIdle =
{
    width = 587,
    height = 707,
    numFrames = 10
}
local sheetIdleKnight = graphics.newImageSheet( "assets/knightIdle.png", sheetOptionsIdle )

local sheetOptionsWalk =
{
    width = 587,
    height = 707,
    numFrames = 10
}
local sheetWalkingKnight = graphics.newImageSheet( "assets/knightWalking.png", sheetOptionsWalk  )


-- sequences table
local sequence_data = {
    -- consecutive frames sequence
    {
        name = "idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleKnight
    },
    {
        name = "walk",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetWalkingKnight
    }
}

local knight = display.newSprite( sheetIdleKnight, sequence_data )
knight.x = centerX
knight.y = centerY
knight.xScale = 100/587
knight.yScale = 120/707

knight:play()

-- After a short time, swap the sequence to 'seq2' which uses the second image sheet
local function swapSheet()
    knight:setSequence( "walk" )
    knight:play()
    print("walk")
end

timer.performWithDelay( 2000, swapSheet )

local sheetOptionsIdleRobot =
{
    width = 567,
    height = 556,
    numFrames = 10
}
local sheetIdleRobot = graphics.newImageSheet( "assets/robotIdle.png", sheetOptionsIdleRobot )

local sheetOptionsRun =
{
    width = 567,
    height = 556,
    numFrames = 8
}
local sheetruningRobot = graphics.newImageSheet( "assets/robotRun.png", sheetOptionsRun  )


-- sequences table
local sequence_data2 = {
    -- consecutive frames sequence
    {
        name = "idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleRobot
    },
    {
        name = "run",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetruningRobot
    }
}

local robot = display.newSprite( sheetIdleRobot, sequence_data2 )
robot.x = centerX + 100
robot.y = centerY
robot.xScale = 100/587
robot.yScale = 120/707

robot:play()

-- After a short time, swap the sequence to 'seq2' which uses the second image sheet
local function swapSheetRobot()
    robot:setSequence( "run" )
    robot:play()
    print("run")
end

timer.performWithDelay( 2000, swapSheetRobot )