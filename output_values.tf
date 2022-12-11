#terraform output values

locals{
  arr=["value1","value2"]
}

output "test"{
  value=local.arr
}
