# terraform console
# > var.myvar
# > "${var.myvar}"

variable "myvar" {
    type = string # terraform decide the type if your not specified
    default = "Hello Terraform"
}

# > var.mymap["mykey"]
# > "${var.mymap["mykey"]}"

variable "mymap" {
    type = map(string)
    default = {
        mykey = "my value"
    }
}

# > "${var.mylist[0]}"
# > element(var.mylist, 1)
# > slice(var.mylist, 0, 2)

variable "mylist" {
    type = list(number)
    default = [1,2,3]
}

