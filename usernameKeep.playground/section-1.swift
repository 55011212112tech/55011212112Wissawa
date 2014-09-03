
class userpassword
{
    let username : String
    let password : String
    var data: Dictionary<String,String>=["":""]

    init(username:String,password:String)
    {
        self.username = username
        self.password = password
    }
    
    
    func keepusername(username:String,password:String) -> String
    {
        
        var temp = "0"
        
        if(password.isEmpty)
        {
           
            data[username] = password
            temp = "1"
        }
        else
        {
            data[username] = password
            temp = "0"
            
        }
        
    return temp

    }
    
    func showdata()
    {
        for datalist in data.keys
        {
            println("\(datalist) \(data[datalist])")
        }
    }

}

let input = userpassword(username:"Mike", password:"0")
let x = input.keepusername("Mike",password:"0")
input.showdata()





