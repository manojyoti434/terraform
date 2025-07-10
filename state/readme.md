<!--  # 1.reads .tf files ,what you want to do  
 # 2. checks .tfstate file ,what you have already in aws
 # 3. terraform querrys provider, if these are already cresated or not
# then it starts creating if you don't have them already in provider aws(through terraform auto approve) 
 # these steps will be done by terraform whenw e run the command terraform plan

# if manually deleted some instance resource, need to create resource and update ip address in route 53 record also, all these steps will be perfromed by terraform when you check terraform plan second time, by comapring .tf , .tfstate files,provider all files# 
terraform checks whether configuration existed is matching with requirement or not, whenever we run terraform commands

keeping state file in local will not work in collabarative environment, terraform will not understand what resources got created already, it may lead to duplicate resources created and mess up, to avoid this we need some central location to maintain .tfstate file, so it get locked while one person is doing some configuration on prvider, so when second person try to run terra cmds, they will be able to do  post one person completed  and all config will be compared with all persons done configs , so we can avoid duplicate infra creation

we can enable statefile lock , will discuss further, to get work done use state file by multiple members

 -->

