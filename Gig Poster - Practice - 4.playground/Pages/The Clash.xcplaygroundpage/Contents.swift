//: # Gig Poster - Practice Task 4
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![the-clash-no-grid](the-clash-no-grid.png "The Clash")
 ![the-clash-with-grid](the-clash-with-grid.png "The Clash")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

////print the reference lines
//for shuline in 1...7{
//    canvas.drawLine(from: Point(x: shuline * 50,y: 0), to: Point(x: shuline * 50,y: 600))
//}
//
//for hengline in 1...11{
//    canvas.drawLine(from: Point(x: 0,y: hengline * 50), to: Point(x: 400,y: hengline * 50))
//}

//draw the background
canvas.fillColor = orange
canvas.drawRectangle(at: Point(x:0, y:0), width: 400, height: 600)

//move the origin
canvas.translate(to: Point(x:228, y:175))
canvas.rotate(by: 45)
//canvas.drawAxes()

//draw the blue rectangles with lines
canvas.drawShapesWithFill = false
canvas.borderColor = offWhite
for rectangle in 0...6{
    canvas.drawRectangle(at: Point(x:0+rectangle*25, y:0+rectangle*25), width: 298-50*rectangle, height: 298-50*rectangle, borderWidth: 12)
}

//move the origin
canvas.rotate(by: -45)
canvas.translate(to: Point(x:-60, y:0))
canvas.rotate(by: 45)

//draw the offwhite rectangles with lines
canvas.borderColor = blue
for rectangle in 0...6{
    canvas.drawRectangle(at: Point(x:0+rectangle*25, y:0+rectangle*25), width: 298-50*rectangle, height: 298-50*rectangle, borderWidth: 12)
}


/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 *Be sure to commit your work multiple times as you make progress on completing this task.*

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

