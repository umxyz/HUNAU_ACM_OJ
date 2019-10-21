<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Solution */

$this->title = $model->id;

if (!$model->canViewSource()) {
    return '暂无权限查看源码';
}
?>
<div class="solution-view">
    <div class="row">
        <div class="col-md-6">
            <p><?= Yii::t('app', 'Submit Time') ?>：<?= $model->created_at ?></p>
        </div>
        <div class="col-md-6">
            <p>运行 ID: <?= Html::a($model->id, ['/solution/detail', 'id' => $model->id]) ?></p>
        </div>
    </div>
    <div class="pre"><p><?= Html::encode($model->source) ?></p></div>
</div>
<script type="text/javascript">
    (function ($) {
        $(document).ready(function () {
            $('.pre p').each(function(i, block) {  // use <pre><p>
                hljs.highlightBlock(block);
            });
        })
    })(jQuery);
</script>