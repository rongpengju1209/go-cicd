package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"code":    200,
			"version": "v5",
			"data":    "这是第五版，Hello ArgoCD",
		})
	})
	r.Run(":8080")
}
