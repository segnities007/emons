package main

import (
	"fmt"
	"net/http"
	"os"
	"path/filepath"
	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()

	// 画像アップロードエンドポイント
	e.POST("/upload", uploadImage)

	// 画像取得エンドポイント
	e.GET("/images/:filename", getImage)

	// サーバー開始
	e.Logger.Fatal(e.Start(":8080"))
}

// 画像取得処理
func getImage(c echo.Context) error {
	// URLパラメータからファイル名を取得
	filename := c.Param("filename")

	// 保存ディレクトリのパスを作成
	imagePath := filepath.Join("images", filename)

	// ファイルが存在するか確認
	if _, err := os.Stat(imagePath); os.IsNotExist(err) {
		return c.String(http.StatusNotFound, "画像ファイルが見つかりません")
	}

	// ファイルをレスポンスとして返す
	return c.File(imagePath)
}

// 画像アップロード処理
func uploadImage(c echo.Context) error {
	// フォームデータからファイルを取得
	file, err := c.FormFile("image")
	if err != nil {
		return c.String(http.StatusBadRequest, "画像ファイルが見つかりません")
	}

	// ファイルを開く
	src, err := file.Open()
	if err != nil {
		return err
	}
	defer src.Close()

	// 保存先のパスを作成
	dstPath := filepath.Join("images", file.Filename)

	// ディレクトリが存在しない場合は作成
	if _, err := os.Stat("images"); os.IsNotExist(err) {
		err = os.Mkdir("images", 0755)
		if err != nil {
			return err
		}
	}

	// 保存先ファイルを作成
	dst, err := os.Create(dstPath)
	if err != nil {
		return err
	}
	defer dst.Close()

	// ファイルを保存
	if _, err = dst.ReadFrom(src); err != nil {
		return err
	}

	// 保存完了メッセージを返す
	return c.String(http.StatusOK, fmt.Sprintf("画像が保存されました: %s", dstPath))
}
