<?php
include('functions - kadai.php');

// 入力チェック
if (
  !isset($_POST['name']) || $_POST['name'] == '' ||
  !isset($_POST['url']) || $_POST['url'] == ''
) {
  exit('ParamError');
}
//POSTデータ取得
$name = $_POST['name'];
$url = $_POST['url'];
$comment = $_POST['comment'];

// Fileアップロードチェック
if (isset($_FILES['upfile']) && $_FILES['upfile']['error'] == 0) {
  // ファイルをアップロードしたときの処理
  //アップロードしたファイルの情報取得
$uploadedFileName = $_FILES['upfile']['name'];
$tempPathName = $_FILES['upfile']['tmp_name'];
$fileDirectoryPath = 'upload/';

  //File名の変更
  $extension = pathinfo($uploadedFileName, PATHINFO_EXTENSION);
  $uniqueName = date('YmdHis') . md5(session_id()) . "." . $extension;
  $fileNameToSave = $fileDirectoryPath . $uniqueName;

  if (is_uploaded_file($tempPathName)) {
    if (move_uploaded_file($tempPathName, $fileNameToSave)) {
  chmod($fileNameToSave, 0644); // 権限の変更
    }else{
      exit('Error:アップロードできませんでした');
    }    
  }
  // FileUpload開始
  // FileUpload終了
} else {
  // ファイルをアップしていないときの処理
  $img = '画像が送信されていません';
}
  // FileUpload終了

  // ファイルをアップしていないときの処理


//DB接続
$pdo = connectToDb();

//データ登録SQL作成
$sql = 'INSERT INTO gs_bm_table(id, name, url, comment, image, indate) VALUES(NULL, :a1, :a2, :a3, :image, sysdate())';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':a1', $name, PDO::PARAM_STR);
$stmt->bindValue(':a2', $url, PDO::PARAM_STR);
$stmt->bindValue(':a3', $comment, PDO::PARAM_STR);
$stmt->bindValue(':image', $fileNameToSave, PDO::PARAM_STR);
$status = $stmt->execute();

//データ登録処理後
if ($status == false) {
  showSqlErrorMsg($stmt);
} else {
  //index.phpへリダイレクト
  header('Location: index - kadai.php');
}
