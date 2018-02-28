class User :
    name = ""
    age = 0
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def print_age(self):
        print "%1d years old" % self.age

    def whileLoop(self):
        i = 0
        while i < self.age :
            print "age is ", i
            print "\n"

        print "end"

user = User("android", 12)
user.print_age()
user.whileLoop()
