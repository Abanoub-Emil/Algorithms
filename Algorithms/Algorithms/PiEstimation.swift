//
//  PiEstimation.swift
//  Algorithms
//
//  Created by Abanoub Emil on 04/09/2021.
//

import Foundation

//  This problem was asked by Google.
//
//  The area of a circle is defined as πr^2. Estimate π to 3 decimal places using a Monte Carlo method.
//
//  Hint: The basic equation of a circle is x2 + y2 = r2.

struct PiEstimation {
    
    
    func solution() {
        let intervals = 1000000
        var circlePoints = 0.0
        var squarePoints = 0.0
        for _ in 0...intervals {
        
        let x = Double.random(in: -1...1)
        let y = Double.random(in: -1...1)
            
            if pow(x, 2) + pow(y, 2) <= 1 {
                circlePoints += 1
            }
            squarePoints += 1
        }
        
        print(4.0 * circlePoints / squarePoints)
    }
}

//
//  We know that area of the square is 1 unit sq while that of circle is \pi \ast  (\frac{1}{2})^{2} = \frac{\pi}{4}. Now for a very large number of generated points,
//
//  (area of the circle / area of the square) = (no. of points generated inside the circle \ total no. of points generated or no. of points generated inside the square)
//
//  that is,
//
//  PI = 4 no. of points generated inside the circle \ no. of points generated inside the square

//  The beauty of this algorithm is that we don’t need any graphics or simulation to display the generated points. We simply generate random (x, y) pairs and then check if  x^{2} + y^{2} = 1 . If yes, we increment the number of points that appears inside the circle. In randomized and simulation algorithms like Monte Carlo, the more the number of iterations, the more accurate the result is. Thus, the title is “Estimating the value of Pi” and not “Calculating the value of Pi”. Below is the algorithm for the method:
//
//  The Algorithm
//  1. Initialize circle_points, square_points and interval to 0.
//  2. Generate random point x.
//  3. Generate random point y.
//  4. Calculate d = x*x + y*y.
//  5. If d <= 1, increment circle_points.
//  6. Increment square_points.
//  7. Increment interval.
//  8. If increment < NO_OF_ITERATIONS, repeat from 2.
//  9. Calculate pi = 4*(circle_points/square_points).
//  10. Terminate.
//
