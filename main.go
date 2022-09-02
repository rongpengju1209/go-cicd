package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"code": 200,
			"version": "v1",
			"data":    "这是第一版，Hello ArgoCD",
		})
	})
	r.Run(":8080")
}
