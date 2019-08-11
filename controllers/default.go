package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Debug() {
	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.TplName = "index.tpl"
}

func (c *MainController) Login() {
	c.TplName = "login.html"
}

func (c *MainController) Main() {
	c.TplName = "main.html"
}

func (c *MainController) Manage() {
	c.TplName = "manage.html"
}

func (c *MainController) Stat() {
	c.TplName = "stat.html"
}
