// Playground - noun: a place where people can play

import UIKit

protocol Speaker
{
    func Speak()
}

class vicki: Speaker
{
    func Speak()
    {
        println("Hello, I am Vicki!")
    }
}

class Ray:Speaker{
    func Speak()
    {
       println("Yo, I am Ray!")
    }
}
