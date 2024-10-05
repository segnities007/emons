package domain

import (
	"gorm.io/gorm"
)

type Post struct{
	gorm.Model
	Content string `gorm:"content"`
}

func NewPost(content string, id uint) *Post{

}
