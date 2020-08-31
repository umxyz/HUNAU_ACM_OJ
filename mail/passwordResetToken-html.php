<?php
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $user app\models\User */

$resetLink = Yii::$app->urlManager->createAbsoluteUrl(['site/reset-password', 'token' => $user->password_reset_token]);
?>
<!-- <div class="password-reset">
    <p>Hello <?= Html::encode($user->username) ?>,</p>

    <p>请点击下面的链接去重置密码：</p>

    <p><?= Html::a(Html::encode($resetLink), $resetLink) ?></p>
</div> -->
<div style="width: 100%; max-width: 450px; margin: 32px auto; border: 1px solid rgba(0,0,0,0.1); border-radius: 4px; padding: 0 12px;">

    <p style="font-weight: bold">您好 <?= Html::encode($user->username) ?>,</p>

    <p>请点击下面的链接去重置密码：</p>

    <p style="padding: 12px; background: #efefef; border-radius: 4px;"><?= Html::a(Html::encode($resetLink), $resetLink) ?></p>

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