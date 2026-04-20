resource "local_file" "hello-world" {
  content  = "Hallo!"
  filename = "hello-world.txt"
}