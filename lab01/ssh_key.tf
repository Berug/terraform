resource "aws_key_pair" "training_key_class1" {
  key_name   = "class1"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDENr635EXMXhfMolNk4vgXGPgTXcZu0rSj1cRHGmoQ17L2dx8Gz6oKkSa9HCKT5qUZww7Fxv9dWnFSpYXDAd+ugjG+Z/xEWPEUReGj0WWw4hqHRrgypaWs7Fl5t8dcd/UFY2eABsVvo5j8wKtr+SVUF8/v1y2aMIrHmUHlxTH4IdCoweB2blvBvb/FDlL7tiY0HNtnfcR7Xlxxzy9EEQ+BdwspSNCVuI0Feskgyd9RAcL5lP0PbUNLokUx1+JujzbJaX42HZnYjAXACme4mO7pTxOP6sNCHAtgwuWF0vZwNWLWWz4sGZpQ9XjfHwf/z3//vy9KFO5ZXmEeXcCGhgfF45b2QFpPADVxBqQVyNcjRBLgQY80GPIFfQaibybkUdXDTt9JnZpi75zX/V3QgibxD/wbUIVBDd4glZpYRaBYkrCrmts3cTMEa/lm8QHD3XYGzkn4SHWrWoOWToo8+7J5S+I1J1QeopL+seyuVwikFqN0DfKv8SK+tUGozJvFWWHEFgLkzRAJD5x/5Z7n72+kmxwarmp2VwRE6oLPbRpk0ULuySiMcV5xBuu3rMty5ydPfS4cD4CwJmXPLAS93GysqGZlI9jFvD/6sFM5fK3xrs5Dzdw7n8K05WJdzg4kfM5Wqys57wokG5/coKJ6Q1cfpfZVZ8W0GFFnqk8yKEe48Q== usuario@DESKTOP-C3T5LE7"
  tags = {
    Name    = "training-keypair-1"
    Project = "Training"
  }
}
resource "aws_key_pair" "training_key_class2" {
  key_name   = "class2"
  public_key = file("class_key.pem.pub")
  tags = {
    Name    = "training-keypair-2"
    Project = "Training"
  }
}
