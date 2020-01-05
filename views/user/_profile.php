<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\web\Session;

/* @var $this yii\web\View */
/* @var $model app\models\User */
/* @var $profile app\models\UserProfile */
/* @var $form yii\bootstrap\ActiveForm */
?>

<?php $form = ActiveForm::begin(); ?>

<?= $form->field($model, 'nickname')->textInput(['disabled' => true]) ?>

<?= $form->field($profile, 'qq_number')->textInput(['disabled' => true]) ?>

<?= $form->field($profile, 'student_number')->textInput(['disabled' => true]) ?>

<!-- <?= $form->field($profile, 'gender')->radioList([Yii::t('app', 'Male'), Yii::t('app', 'Female')]) ?> -->

<?= $form->field($profile, 'major')->textInput(['disabled' => true]) ?>

<div class="form-group">
    <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
</div>

<?php ActiveForm::end(); ?>
