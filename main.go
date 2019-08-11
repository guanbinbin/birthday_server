package main

import (
	_ "birthday_server/routers"
	"birthday_server/models/mysql"
	"github.com/astaxie/beego"
	. "birthday_server/models/log"

)

func main() {
	SysLogSetup()
	mysql.GetDBConn()
	Glog.Debug("server start now...")
	beego.Run()
	mysql.ReleaseDB()
	Glog.Debug("server exited safely...")
}

