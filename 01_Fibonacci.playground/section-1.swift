//  Функция, которая подсчитывает число Фибоначчи для
//  получаемого аргумента N. Результатом выполнения должен
//  быть возвращаемый кортеж с аргументом N и результатом.
//  Выполнить для 10, результат вывести в консоль.

// Вариант 1
func Fibonacci(#N: Int) -> (N: Int, Result: Int)
{
    if N < 3
    {
        return (N, 1)
    }
    else
    {
        return (N, Fibonacci(N: N - 1).Result +
                   Fibonacci(N: N - 2).Result)
    }
}

println(Fibonacci(N: 10))



// Вариант 2
func Fibonacci2(#N: Int) -> (N: Int, Result: Int)
{
    var result = 0
    var a = 1
    var b = 1
    var i = 2
    
    while i < N
    {
        result = a + b
        a = b
        b = result
        i++
    }
    
    return (N, result)
}

println(Fibonacci2(N: 10))


