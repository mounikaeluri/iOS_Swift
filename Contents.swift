//: Playground - noun: a place where people can play

//-----------------------------------------------------------------
//Problem 1
//-----------------------------------------------------------------

func palindrome(number:Int) -> Int
{
    var list = [Int]()
    
    for palindrome in 1...number
    {
        var reverse = 0
        var pali = palindrome
        while (pali != 0)
        {
            reverse = reverse * 10 + (pali % 10)
            pali = pali / 10
        }
        if(palindrome == reverse)
        {
            list.append(reverse)
        }
    }
    return list.count
}

print("Problem 1",palindrome(number: 200))


//-----------------------------------------------------------------
//Problem 2
//-----------------------------------------------------------------

func sumMultiples3_5(number:Int) -> Int
{
    var sum = 0
    
    for i in 1...number-1
    {
        if ((i%3 == 0 || i%5 == 0) && !(i%3 == 0 && i%5 == 0))
        {
            sum += i
        }
    }
    return sum
}

print("Problem 2",sumMultiples3_5(number: 20))

//-----------------------------------------------------------------
//Problem 3
//-----------------------------------------------------------------

func paternCount(text:String,patern:String) -> Int
{
    var count = 0
    var str = text
    while(str.characters.count>0)
    {
        if(str.hasPrefix(patern))
        {
            count+=1
        }
        str.remove(at: str.startIndex)
    }
    return count
}

print("Problem 3",paternCount(text: "abababa", patern: "aba"))


//-----------------------------------------------------------------
//Problem 4
//-----------------------------------------------------------------

func popularClasses(studentA:Set<String>,studentB:Set<String>,studentC:Set<String>) -> Set<String>
{
    return (studentA.intersection(studentB.intersection(studentC)))
}


let studentA: Set = ["CS101", "CS237", "CS520"]
let studentB: Set = ["CS101", "Math245", "CS237"]
let studentC: Set = ["CS237", "CS560"]
print("Problem 4",popularClasses(studentA: studentA, studentB: studentB, studentC: studentC))

//-----------------------------------------------------------------
//Problem 5
//-----------------------------------------------------------------

func average(num: [Int]) -> Double?
{
    
    if num.isEmpty
    {
        return nil
    }
    else
    {
        var sum = 0.0
        for i in num
        {
            sum += Double(i)
        }
        
        let finalTotal = Double(num.count)
        let average = finalTotal/finalTotal
        return average
    }
}

print("Problem 5",average(num:[1, 2, 3, 4]))

//-----------------------------------------------------------------
//Problem 6
//-----------------------------------------------------------------

func average2(num: [Int]!) -> Double?
{
    
    if num.isEmpty
    {
        return nil
    }
    else
    {
        var sum = 0.0
        for i in num
        {
            sum += Double(i)
        }
        
        let finalTotal = Double(num.count)
        let average = sum/finalTotal
        return average
    }
}

print("Problem 6",average2(num:[]))

//-----------------------------------------------------------------
//Problem 7
//-----------------------------------------------------------------

func digitDistribution(integerArray:[Int])
{
    
    var wholeInts = [Int]()
    
    for integer in integerArray
    {
        
        var num = abs(integer)
        while num > 0
        {
            let digit = num % 10
            wholeInts.append(digit)
            num = num / 10
        }
    }
    
    var mapper = [Int: Int]()
    for myInt in wholeInts
    {
        
        let num = abs(myInt)
        
        if mapper[num] != nil
        {
            var count = mapper[num]! as Int
            count += 1
            mapper[num] = count
            
        }else
        {
            mapper[num] = 1
        }
        
    }
    print("Problem 7",mapper)
}


digitDistribution(integerArray: [112, 24, 15])


//-----------------------------------------------------------------
//Problem 8
//-----------------------------------------------------------------

func digitDistribution(integers: [Int], count: Int)
{
    
    var wholeInts = [Int]()
    
    for integer in integers
    {
        
        var num = abs(integer)
        while num > 0
        {
            let digit = num % 10
            wholeInts.append(digit)
            num = num / 10
        }
    }
    
    var mapper = [Int: Int]()
    var prb8 = [Int:Int]()
    
    for myInt in wholeInts
    {
        
        let num = abs(myInt)
        
        if mapper[num] != nil
        {
            var bang = mapper[num]! as Int
            bang += 1
            mapper[num] = bang
            
        }else
        {
            mapper[num] = 1
        }
        
        if (mapper[num]! > count-1)
        {
            prb8[num] = mapper[num]
        }
    }
    print("Problem 8",prb8)
}

digitDistribution(integers: [11,132,22,44],count:3)

//-----------------------------------------------------------------
//Problem 9
//-----------------------------------------------------------------

func digitDistribution2(integers: [Int], count:Int = 2)
{
    
    var wholeInts = [Int]()
    
    for integer in integers
    {
        
        var num = abs(integer)
        while num > 0
        {
            let digit = num % 10
            wholeInts.append(digit)
            num = num / 10
        }
    }
    
    var mapper = [Int: Int]()
    var prb8 = [Int:Int]()
    
    for myInt in wholeInts
    {
        
        let num = abs(myInt)
        
        if mapper[num] != nil
        {
            var bang = mapper[num]! as Int
            bang += 1
            mapper[num] = bang
            
        }else
        {
            mapper[num] = 1
        }
        
        if (mapper[num]! > count-1)
        {
            prb8[num] = mapper[num]
        }
    }
    print("Problem 9",prb8)
}

digitDistribution2(integers: [11,23,24,25],count:3)
digitDistribution2(integers: [11,23,24,25])

//-----------------------------------------------------------------
//Problem 10
//-----------------------------------------------------------------


func digitDistribution3(count:Int) -> ()
{
    func countMyInts(integers: [Int])
    {
        
        var wholeInts = [Int]()
        
        for integer in integers
        {
            
            var num = abs(integer)
            while num > 0
            {
                let digit = num % 10
                wholeInts.append(digit)
                num = num / 10
            }
        }
        
        var mapper = [Int: Int]()
        var prb8 = [Int:Int]()
        
        for myInt in wholeInts
        {
            let num = abs(myInt)
            if mapper[num] != nil
            {
                var bang = mapper[num]! as Int
                bang += 1
                mapper[num] = bang
            }else
            {
                mapper[num] = 1
            }
            if (mapper[num]! > count-1)
            {
                prb8[num] = mapper[num]
            }
        }
        print("Problem 10",prb8)
    }

    return countMyInts(integers: [12,22,33,21,11])
}

digitDistribution3(count: 3)




