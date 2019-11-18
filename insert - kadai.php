<?php

// 入力チェック
if (
!isset($_POST['name']) || $_POST['name']=='' ||
!isset($_POST['url']) || $_POST['url']=='' 
) {
exit('ParamError');
}
//POSTデータ取得
$name = $_POST['name'];
$url = $_POST['url'];
$comment = $_POST['comment'];

//DB接続
include('functions - kadai.php');
$pdo = connectToDb();

$sql ='INSERT INTO gs_bm_table(id, name, url, comment, image,
indate)VALUES(NULL, :a1, :a2, :a3, :image, sysdate())';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':a1', $name, PDO::PARAM_STR);
$stmt->bindValue(':a2', $url, PDO::PARAM_STR);
$stmt->bindValue(':a3', $comment, PDO::PARAM_STR);
$stmt->bindValue(':image', $fileNameToSave, PDO::PARAM_STR);
$status = $stmt->execute(); //実行

if ($status==false) {
$error = $stmt->errorInfo();
exit('sqlError:'.$error[2]);
} else {
header('Location: index - kadai.php');
}