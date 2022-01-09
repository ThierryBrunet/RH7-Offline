# /home/thierry/projects/dapr-sdk/python-hello/DoIt.ps1


# -- Option 1 -- Simple Hello

cd /home/thierry/projects/dapr-sdk/python-hello

@"
print("Hello, World!")
"@ | Out-File -path "HelloWorld.py" -Force

python HelloWorld.py



# -- Option 2 -- Hello by arguments


cd /home/thierry/projects/dapr-sdk/python-hello

@"
import re, string, sys

greeting = sys.argv[1] addressee = sys.argv[2] punctuation = sys.argv[3]

class Felicitations(object): def __init__(self): self.felicitations = [ ] def addon(self, word): self.felicitations.append(word) def printme(self): greeting = string.join(self.felicitations[0:], "") print greeting
def prints(string): string.printme() return
def hello(i): string = "hell" + i return string def caps(word): value = string.capitalize(word) return value

def main(): salut = Felicitations() if greeting != "Hello": cap_greeting = caps(greeting) else: cap_greeting = greeting salut.addon(cap_greeting) salut.addon(", ") cap_addressee = caps(addressee) lastpart = cap_addressee + punctuation salut.addon(lastpart) prints(salut)

if __name__ == '__main__': main()
"@ | Out-File -path "HelloWorld2.py" -Force

python hello2.py hello world !





