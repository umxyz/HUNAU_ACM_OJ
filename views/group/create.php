<?php

use app\widgets\Alert;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Group */

$this->title = Yii::t('app', 'Create Group');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Groups'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
if (!Yii::$app->user->identity->role == \app\models\User::ROLE_ADMIN) {
    echo "<div class=\"container\"><p class=\"bg-danger\">小组仅管理员可创建{$a}</p></div>";
    $var = 1;
} else {
    $val = 0;
}
?>

<div class="group-create">

    <h1><?= Html::encode($this->title) ?></h1>
    <?= Yii::$app->user->identity->role == \app\models\User::ROLE_ADMIN ? $this->render('_form', ['model' => $model,]) : '该账户不具备创建小组的权限，更多帮助请移步: <a href="https://oj.iset.xyz/site/news?id=6" target="_blank" >news?id=6</a> 以及 <a href="https://oj.iset.xyz/wiki/index" target="_blank" >wiki/index</a>'; ?>

</div>