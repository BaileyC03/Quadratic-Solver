getDiscriminant :: Fractional a => [a] ->  a
getDiscriminant [a, b, c]  = b^2 - 4 * a * c -- Following Quadratic Formula

solveQuadratic :: Fractional a => [a] -> [a]
solveQuadratic [a,b,c] = [x, y] where
    x = (-b + getDiscriminant [a,b,c])/(2*a)
    y = (b + getDiscriminant [a,b,c])/(2*a)