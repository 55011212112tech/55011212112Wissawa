
class userpassword
{
    let username : String
    let password : String
    var data: Dictionary<String,String>=["Tech":"666666"]

    init(username:String,password:String)
    {
        self.username = username
        self.password = password
    }
    
    
    func keepusername(username:String,password:String) -> String
    {
        
        data[username] = password
        println(data)
        let check = "finished"
        return check
    
        
    }
    
    
}

let input = userpassword(username:"Mike", password:"555")
input.keepusername("Mike",password:"555"