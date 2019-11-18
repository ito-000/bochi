<?php
//共通で使うものを別ファイルにしておきましょう。

//DB接続関数（PDO）
function connectToDb()
{
$dbn='mysql:dbname=gsacfd04_db01;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';
try {
return new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
exit('dbError:'.$e->getMessage());
}
 }


//SQL処理エラー
function showSqlErrorMsg($stmt)
{
  $error = $stmt->errorInfo();
  exit('sqlError:' . $error[2]);
}

function h($str)
{
  return htmlspecialchars($str, ENT_QUOTES, 'UTF-8');
}


// SESSIONチェック＆リジェネレイト
function checkSessionId()
{
  // ログイン失敗時の処理（ログイン画面に移動）
  // ログイン成功時の処理（一覧画面に移動）
if (!isset($_SESSION['session_id']) || $_SESSION['session_id']!=session_id()) {
header('Location: login.php');
} else {
session_regenerate_id(true); // セッションidの再生成
$_SESSION['session_id'] = session_id(); // セッション変数に格納
}
}