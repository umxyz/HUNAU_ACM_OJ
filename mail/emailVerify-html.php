<?php
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $user app\models\User */

$verifyLink = Yii::$app->urlManager->createAbsoluteUrl(['site/verify-email', 'token' => $user->verification_token]);
?>
<!-- <div class="verify-email">
    <p>Hello <?= Html::encode($user->username) ?>,</p>

    <p>请点击下面的链接去验证邮箱：</p>

    <p><?= Html::a(Html::encode($verifyLink), $verifyLink) ?></p>

    <p style="color: #e9e9e9">本邮件为系统自动发送，欢迎再次访问<a style="text-decoration: none;" target="_blank" href="https://oj.yuuxeun.com">农大ACM OJ</a></p>
</div> -->
<div style="width: 100%; max-width: 450px; margin: 32px auto; border: 1px solid rgba(0,0,0,0.1); border-radius: 4px; padding: 0 12px;">

    <p style="font-weight: bold">您好 <?= Html::encode($user->username) ?>,</p>

    <p>请点击下面的链接去验证邮箱：</p>

    <p style="padding: 12px; background: #efefef; border-radius: 4px;"><?= Html::a(Html::encode($verifyLink), $verifyLink) ?></p>

    <div style="text-align: center;"><a style="text-transform: uppercase;
    text-decoration: none;
    border: 2px solid #6c7575;
    color: #2f3333;
    padding: 10px;
    display: inline-block;
    margin: 0 auto;
    " target="_blank" href="https://oj.yuuxeun.com">本邮件为系统自动发送，欢迎再次访问农大ACM OJ</a>
    </div>
    <br>
</div>