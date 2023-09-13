import Foundation

/*
 Like MAP (C#, Java), or Dict in Python
 Set of Key (unique) -> value
 
 */

var emials = [String : String]()
emials["ling@gmail.com"] = "Ling"
emials["fang@gmail.com"] = "Fang"

print(emials)
// if same key, it will set the new value
emials["ling@gmail.com"] = "lingfang"


print(emials)

for email in emials.keys{
    print(email)
}
for email in emials.values{
    print(email)
}
for (email, name) in emials{
    print("The email : \(email) is from : \(name)")
}
