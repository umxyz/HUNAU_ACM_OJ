<?php

/* @var $this \yii\web\View */
/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">

<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <link rel="shortcut icon" href="<?= Yii::getAlias('@web') ?>/favicon.ico">
</head>

<body>
    <?php $this->beginBody() ?>

<<<<<<< HEAD
    <div class="wrap">
        <header id="header" class="hidden-xs">
            <div class="container">
                <div class="page-header">
                    <div class="logo pull-left">
                        <div class="pull-left">
                            <a class="navbar-brand" href="<?= Yii::$app->request->baseUrl ?>">
                                <img src="<?= Yii::getAlias('@web') ?>/images/logo.png" />
                            </a>
                        </div>
                        <div class="brand">
                            <!-- Online Judge -->
                            ACM创新实验室
                        </div>
=======
<div class="wrap">
    <header id="header" class="hidden-xs">
        <div class="container">
            <div class="page-header">
                <div class="logo pull-left">
                    <div class="pull-left">
                        <a class="navbar-brand" href="<?= Yii::$app->request->baseUrl ?>">
                            <img src="<?= Yii::getAlias('@web') ?>/images/logo.png" />
                        </a>
                    </div>
                    <div class="brand">
                       <!-- Online Judge -->
						ACM创新实验室
>>>>>>> b9aff6cc0b42bfe18f2df68c1455be5b4367a8a4
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
<<<<<<< HEAD
        </header>
        <?php
        NavBar::begin([
            #'brandLabel' => Yii::$app->setting->get('ojName') . ' OJ',
            'brandLabel' => '比赛报名点击此处',
            #'brandUrl' => Yii::$app->homeUrl,
            'brandUrl' => 'http://hk.mikecrm.com/ydfb2sZ',
            'options' => [
                'class' => 'navbar-default',
            ],
        ]);
        $menuItems = [
            ['label' => '<span class="glyphicon glyphicon-home"></span> ' . Yii::t('app', 'Home'), 'url' => ['/site/index']],
            ['label' => '<span class="glyphicon glyphicon-list"></span> ' . Yii::t('app', 'Problems'), 'url' => ['/problem/index']],
            [
                'label' => '<span class="glyphicon glyphicon-user"></span> ' . Yii::t('app', 'Group'),
                'url' => Yii::$app->user->isGuest ? ['/group/index'] : ['/group/my-group']
            ],
            ['label' => '<span class="glyphicon glyphicon-knight"></span> ' . Yii::t('app', 'Contests'), 'url' => ['/contest/index']],
            [
                'label' => '<span class="glyphicon glyphicon-king"></span> ' . Yii::t('app', 'Rating'),
                'url' => ['/rating/problem'],
                'active' => Yii::$app->controller->id == 'rating'
            ],
            ['label' => '<span class="glyphicon glyphicon-signal"></span> ' . Yii::t('app', 'Status'), 'url' => ['/solution/index']],
            /* [
=======
        </div>
    </header>
    <?php
    NavBar::begin([
		#'brandLabel' => Yii::$app->setting->get('ojName') . ' OJ',
		'brandLabel' => '比赛报名点击此处',
        #'brandUrl' => Yii::$app->homeUrl,
		'brandUrl' => 'http://hk.mikecrm.com/ydfb2sZ',
        'options' => [
            'class' => 'navbar-default',
        ],
    ]);
    $menuItems = [
        ['label' => '<span class="glyphicon glyphicon-home"></span> ' . Yii::t('app', 'Home'), 'url' => ['/site/index']],
        ['label' => '<span class="glyphicon glyphicon-list"></span> ' . Yii::t('app', 'Problems'), 'url' => ['/problem/index']],
	[
            'label' => '<span class="glyphicon glyphicon-user"></span> ' . Yii::t('app', 'Group'),
            'url' => Yii::$app->user->isGuest ? ['/group/index'] : ['/group/my-group']
        ],
	['label' => '<span class="glyphicon glyphicon-knight"></span> ' . Yii::t('app', 'Contests'), 'url' => ['/contest/index']],
        [
            'label' => '<span class="glyphicon glyphicon-king"></span> ' . Yii::t('app', 'Rating'),
            'url' => ['/rating/problem'],
            'active' => Yii::$app->controller->id == 'rating'
        ],
	['label' => '<span class="glyphicon glyphicon-signal"></span> ' . Yii::t('app', 'Status'), 'url' => ['/solution/index']],
       /* [
>>>>>>> b9aff6cc0b42bfe18f2df68c1455be5b4367a8a4
            'label' => '<span class="glyphicon glyphicon-info-sign"></span> '. Yii::t('app', 'Wiki'),
            'url' => ['/wiki/index'],
            'active' => Yii::$app->controller->id == 'wiki'
        ],*/
<<<<<<< HEAD
        ];
        if (Yii::$app->user->isGuest) {
            // $menuItems[] = ['label' => '<span class="glyphicon glyphicon-new-window"></span> ' . Yii::t('app', 'Signup'), 'url' => ['/site/Signup']];
            $menuItems[] = ['label' => '<span class="glyphicon glyphicon-log-in"></span> ' . Yii::t('app', 'Login'), 'url' => ['/site/login']];
        } else {
            if (Yii::$app->user->identity->role == \app\models\User::ROLE_VIP || Yii::$app->user->identity->role == \app\models\User::ROLE_ADMIN) {    // 新增 VIP和管理员用户 访问 Polygon System 入口
                $menuItems[] = ['label' => '<span class="glyphicon glyphicon-new-window"></span> ' . Yii::t('app', 'Polygon System'), 'url' => ['/polygon']];
            }
            if (Yii::$app->user->identity->role == \app\models\User::ROLE_VIP || Yii::$app->user->identity->role == \app\models\User::ROLE_ADMIN) {    // 新增 VIP和管理员用户 访问 Wiki帮助文档 入口
                $menuItems[] = [
                    'label' => '<span class="glyphicon glyphicon-info-sign"></span> ' . Yii::t('app', 'Wiki'),
                    'url' => ['/wiki/index'],
                    'active' => Yii::$app->controller->id == 'wiki'
                ];
            }
            if (Yii::$app->user->identity->role == \app\models\User::ROLE_ADMIN) {
                $menuItems[] = [
                    'label' => '<span class="glyphicon glyphicon-cog"></span> ' . Yii::t('app', 'Backend'),
                    'url' => ['/admin'],
                    'active' => Yii::$app->controller->module->id == 'admin'
                ];
            }
            $menuItems[] =  [
                'label' => '<span class="glyphicon glyphicon-user"></span> ' . Yii::$app->user->identity->nickname,
                'items' => [
                    ['label' => '<span class="glyphicon glyphicon-home"></span> ' . Yii::t('app', 'Profile'), 'url' => ['/user/view', 'id' => Yii::$app->user->id]],
                    // ['label' => '<span class="glyphicon glyphicon-cog"></span> ' . Yii::t('app', 'Setting'), 'url' => ['/user/setting', 'action' => 'profile']],
                    '<li class="divider"></li>',
                    ['label' => '<span class="glyphicon glyphicon-log-out"></span> ' . Yii::t('app', 'Logout'), 'url' => ['/site/logout']],
                ]
            ];
        }
        echo Nav::widget([
            'options' => ['class' => 'navbar-nav navbar-right'],
            'items' => $menuItems,
            'encodeLabels' => false,
            'activateParents' => true
        ]);
        NavBar::end();
        ?>
=======
    ];
    if (Yii::$app->user->isGuest) {
       // $menuItems[] = ['label' => '<span class="glyphicon glyphicon-new-window"></span> ' . Yii::t('app', 'Signup'), 'url' => ['/polygon']];
        $menuItems[] = ['label' => '<span class="glyphicon glyphicon-log-in"></span> ' . Yii::t('app', 'Login'), 'url' => ['/site/login']];
    } else {
		if (Yii::$app->user->identity->role == \app\models\User::ROLE_VIP || Yii::$app->user->identity->role == \app\models\User::ROLE_ADMIN) {	// 新增 VIP和管理员用户 访问 Polygon System 入口
			$menuItems[] = ['label' => '<span class="glyphicon glyphicon-cog"></span> ' . Yii::t('app', 'Polygon System'), 'url' => ['/polygon', 'action' => 'polygon']];
		}
        if (Yii::$app->user->identity->role == \app\models\User::ROLE_ADMIN) {
            $menuItems[] = [
                'label' => '<span class="glyphicon glyphicon-cog"></span> ' . Yii::t('app', 'Backend'),
                'url' => ['/admin'],
                'active' => Yii::$app->controller->module->id == 'admin'
            ];
        }
        $menuItems[] =  [
            'label' => '<span class="glyphicon glyphicon-user"></span> ' . Yii::$app->user->identity->nickname,
            'items' => [
                ['label' => '<span class="glyphicon glyphicon-home"></span> ' . Yii::t('app', 'Profile'), 'url' => ['/user/view', 'id' => Yii::$app->user->id]],
               // ['label' => '<span class="glyphicon glyphicon-cog"></span> ' . Yii::t('app', 'Setting'), 'url' => ['/user/setting', 'action' => 'profile']],
                '<li class="divider"></li>',
                ['label' => '<span class="glyphicon glyphicon-log-out"></span> ' . Yii::t('app', 'Logout'), 'url' => ['/site/logout']],
            ]
        ];
    }
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItems,
        'encodeLabels' => false,
        'activateParents' => true
    ]);
    NavBar::end();
    ?>
>>>>>>> b9aff6cc0b42bfe18f2df68c1455be5b4367a8a4

        <div class="container">
            <?= Breadcrumbs::widget([
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ]) ?>
            <?= Alert::widget() ?>
            <?= $content ?>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <p class="pull-left">&copy; <?= Yii::$app->setting->get('ojName') ?> OJ <?= date('Y') ?></p>
        </div>
    </footer>

    <?php $this->endBody() ?>
</body>

</html>
<?php $this->endPage() ?>