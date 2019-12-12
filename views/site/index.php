<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $contests array */
/* @var $news app\models\Discuss */

$this->title = Yii::$app->setting->get('ojName') . ' Online Judge';
?>
<div class="row blog">
    <div class="col-md-8">
        <div class="">
            <!-- jumbotron -->
            <!--  <h1>Hello world!</h1>
            <p>欢迎来到<?= Yii::$app->setting->get('schoolName') ?>在线判题系统——<?= Yii::$app->setting->get('ojName') ?> Online Judge</p>
		-->
            <!-- <font color = FF5757 size = 16 >欢迎来到湖南农业大学</font>
	    <br>
	    <font color = FF5233 size = 16 >ACM实验室在线评测系统</font>
		-->
            <a href="https://mp.weixin.qq.com/s/6dwgJfaiZD8lqbTz-4-_PQ" title="ACM实验室迎新介绍" target="_blank">
                <font size=12 color=FF5233>点击查看ACM实验室宣传网页</font>
            </a>
            <br>
            <br>
            <font size=12 color=00A2E8>2019“指尖风暴”程序设计大赛报名二维码在右边</font>
            <br>
        </div>
        <!-- <hr>-->
        <div class="blog-main">
            <?php foreach ($news as $v) : ?>
                <div class="blog-post">
                    <h2 class="blog-post-title"><?= Html::a(Html::encode($v['title']), ['/site/news', 'id' => $v['id']]) ?></h2>
                    <p class="blog-post-meta">
                        <span class="glyphicon glyphicon-time"></span> <?= Yii::$app->formatter->asDate($v['created_at']) ?></p>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
    <div class="col-md-4">
        <!-- <div class="sidebar-module sidebar-module-inset">
            <h4>关于</h4> -->
        <!-- <p>Online Judge系统（简称OJ）是一个在线的判题系统。 用户可以在线提交程序多种程序的源代码，系统对源代码进行编译和执行， 并通过预先设计的测试数据来检验程序源代码的正确性。</p>
		-->
        <!-- <section class="我好难" data-tools="太难了" data-id="95886">
            <section style="text-align:center;">
                <section style="display:inline-block;">
                    <section style="text-align:center;">
                        <section style="width:0px;display:inline-block;">
                            <img class="assistant" style="width:100%;display:block;margin-left:10px;" src="http://image2.135editor.com/cache/remote/aHR0cHM6Ly9tbWJpei5xbG9nby5jbi9tbWJpel9naWYvN1FSVHZrSzJxQzdkN2twR25oWXo3Q3VpY1RZaWJKWnoxVkFpY2ZoRmp5Ym96OWF5aExCVzBKcXVoSHhGellhcWg5aWEzZWljSGliN1dYaldoOGlhUFNJTnZSbmpnLzA/d3hfZm10PWdpZg==" data-ratio="1" data-width="100%" />
                        </section>
                    </section>
                    <section style="display:flex;justify-content: center;align-items:center;margin-top:-30px;">
                        <section style="width:30px;margin-right:-20px;">
                            <img class="assistant" style="width:100%;display:block;" src="http://image2.135editor.com/cache/remote/aHR0cHM6Ly9tbWJpei5xbG9nby5jbi9tbWJpel9wbmcvN1FSVHZrSzJxQzdkN2twR25oWXo3Q3VpY1RZaWJKWnoxVjF5V095SVF0R0lvMmN2bk1hOUZYM2gxNW9KcTBUcVphOXAyZ3dLVjZ0SW5oN29PR0RUZ3lOdy8wP3d4X2ZtdD1wbmc=" data-ratio="1" data-width="100%" />
                        </section>
                        <section style="margin-top:10px;padding:6px 2em;background-image:url(http://image2.135editor.com/cache/remote/aHR0cHM6Ly9tbWJpei5xbG9nby5jbi9tbWJpel9wbmcvN1FSVHZrSzJxQzdkN2twR25oWXo3Q3VpY1RZaWJKWnoxVk9PRDhCWnA4MnNlTUVYYU9DMnQ2MTFYckxjbm9TeGNvNm1LUlY2cEpsa0N3UGlhakV4dkhZdHcvMD93eF9mbXQ9cG5n); background-repeat:no-repeat; text-align: center;background-size:100% 100%; font-size:16px;letter-spacing:1.5px;">
                            <section class="135brush" data-brushtype="text" style="text-align:left;margin-left:5px;font-size:16px;letter-spacing:1.5px;">
                                ACM实验室介绍
                            </section>
                        </section>
                    </section>
                </section>
            </section>
        </section>
        <section class="我好难" data-tools="太难了" data-id="92406">
            <section data-bgopacity="60%" style="margin: 0px auto;border: 2px solid #c8e9fc;border-radius:25px;background: #f7fcfe;">
                <section style="margin: 5px auto; width: 60%; overflow: hidden;" data-width="60%">
                </section>
                <section class="135brush" style="font-size: 14px;text-align: justify;letter-spacing: 1.5px;line-height: 1.75em;color: #3f3e3f;padding: 1em;margin-top:-15px;">
                    <span style="margin: 0px; padding: 0px; color: #3e3f3e; letter-spacing: 1px; caret-color: #ff0000; background-color: #f1f8f8;">ACM实验室是信息院的</span><span style="margin: 0px; padding: 0px; letter-spacing: 1px; caret-color: #ff0000; background-color: #f1f8f8; color: #ff0000;">校级创新实验室</span><span style="margin: 0px; padding: 0px; color: #3e3f3e; letter-spacing: 1px; caret-color: #ff0000; background-color: #f1f8f8;">，旨在为全校对程序设计和编程感兴趣的同学提供一个学习平台，同时也作为学校参加各类程序设计大赛的一个重要力量。不论你基础如何，只要有一颗热爱编程的心，我们都欢迎你的加入。每年一度的全校“</span><span style="margin: 0px; padding: 0px; letter-spacing: 1px; caret-color: #ff0000; background-color: #f1f8f8; color: #ff0000;">指尖风暴程序设计大赛</span><span style="margin: 0px; padding: 0px; color: #3e3f3e; letter-spacing: 1px; caret-color: #ff0000; background-color: #f1f8f8;">”由我们实验室承办，并且每周末都有学长学姐</span><span style="margin: 0px; padding: 0px; letter-spacing: 1px; caret-color: #ff0000; background-color: #f1f8f8; color: #ff0000;">免费</span><span style="margin: 0px; padding: 0px; color: #3e3f3e; letter-spacing: 1px; caret-color: #ff0000; background-color: #f1f8f8;">在十三教为你们悉心辅导竞赛知识以及扩展课堂内容。</span>
                    &nbsp;
                </section>
            </section>
        </section>
    </div> -->
        <iframe height="380" allowTransparency="true" scrolling="no" style="display:block;min-width:100%;width:80px;border:none;overflow:auto;" frameborder="0" src="http://tc6udilajbg1b93u.mikecrm.com/T5xfEQu"></iframe>
        <?php if (!empty($contests)) : ?>
            <div class="sidebar-module">
                <h3>最近比赛：</h3>
                <ol class="list-unstyled">
                    <?php foreach ($contests as $contest) : ?>
                        <li>
                            <?= Html::a(Html::encode($contest['title']), ['/contest/view', 'id' => $contest['id']]) ?>
                        </li>
                    <?php endforeach; ?>
                </ol>
            </div>
        <?php endif; ?>
        <?php if (!empty($discusses)) : ?>
            <div class="sidebar-module">
                <h3>最近讨论</h3>
                <ol class="list-unstyled">
                    <?php foreach ($discusses as $discuss) : ?>
                        <li class="index-discuss-item">
                            <div>
                                <?= Html::a(Html::encode($discuss['title']), ['/discuss/view', 'id' => $discuss['id']]) ?>
                            </div>
                            <small class="text-muted">
                                <span class="glyphicon glyphicon-user"></span>
                                <?= Html::a(Html::encode($discuss['nickname']), ['/user/view', 'id' => $discuss['username']]) ?>
                                &nbsp;•&nbsp;
                                <span class="glyphicon glyphicon-time"></span> <?= Yii::$app->formatter->asRelativeTime($discuss['created_at']) ?>
                                &nbsp;•&nbsp;
                                <?= Html::a(Html::encode($discuss['ptitle']), ['/problem/view', 'id' => $discuss['pid']]) ?>
                            </small>
                        </li>
                    <?php endforeach; ?>
                </ol>
            </div>
        <?php endif; ?>
    </div>
</div>