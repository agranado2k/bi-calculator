## How to configure
Clone the repo and inside the project folder execute the command
`bundle`

if the bundle gem is not installed you can install it executing the command:
`gem install bundle`

## How to test
Execute the command:
`bundle exec rspec`

After that you can see the coverage open the `index.html` file on `coverage` folder.

## How to execute
Execute the command to start the server
`bundle exec rails s`

And you can test send GET request as the example

`    curl -i -X GET 'http://localhost:3000/differentiate/4/3/0/1'`
or
`    curl -i -X GET 'http://localhost:3000/differentiate/4/-5/0/1`

###Requirements:

# The task is:

Write a web service in ruby that is backed by a class, Calculator that
can do mathematical differentiation of polynomials:

DEFINITIONS
1. A polynomial is a function of the form f(x) = a*x^b + ... where a is
   known as a coefficient, and b is called the exponent.
2. If you have a function f(x), then its derivative is denoted by f'(x)
3. Differentiating, or taking the derivate of a polynomial follows a
   simple formula: f'(x) = a*b*x^(b-1)
4. Differentating sums of polynomials follows the rule: If f(x) = g(x) +
   h(x) then f'(x) = g'(x) + h'(x)

EXAMPLES
For example, x^2 as input would give 2x^1 as output
3x^2+x+1 would give 6x+1

Input: GET /differentiate/3/2/1 would represent -> 3x^2+2x+1
Output would be: 6x+2

And for input:
GET /differentiate/4/3/2/1 would represent -> 4x^3+3x^2+2x+1
Output would be: 12x^2+6x+2

A request to GET /differentiate/4/3/0/1 would represent the equation
4x^3+3x^2+0+1 and the output you should return ought to be 12x^2+6x
A request to GET /differentiate/4/-5/0/1 would represent the equation
4x^3-5x^2+0+1 and the output you should return ought to be 12x^2-10x

As you may have guessed by each exponent is represented by its order in
the path component, and its corresponding
exponent is represented by the value of the path exponent. 

More information:

1. You may use google/wikipedia or whichever resources you would
   normally make use of to solve this problem.
2. Please make sure there is test coverage for requests and method, and
   put it on a bitbucket/github that you share with me, username:
cfeckardt
3. Please use only 90 min to complete the task. We do not expect a full
   solution to the problem, and you will not be evaluated on whether you
completed the problem or not,
   but rather on the approach you take to solve the problem.
4. I will schedule a short call with you after submission, so that we
   can go over it together.
5. If you have a any questions or need clarifications, feel free to
   reach out per e-mail, phone or keybase (cfeckardt)

