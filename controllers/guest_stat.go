package controllers

import (
	"github.com/astaxie/beego"
	"log"
	"birthday_server/models/stat"
)

type GuestStatController struct {
	beego.Controller
}

func (gss * GuestStatController) Show() {
	log.Printf("server for GuestStatController: req=%+v", gss.Input())
	//version 1
	//gss.Data["json"] = stat.GuestMoneyContribution()
	//gss.ServeJSON()
	gss.Data["Resp"] = stat.GuestMoneyContribution()
	gss.TplName = "stat.html"
}