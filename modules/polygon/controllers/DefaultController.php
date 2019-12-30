<?php

namespace app\modules\polygon\controllers;

use Yii;
use yii\web\Controller;
use yii\data\ActiveDataProvider;
use app\modules\polygon\models\Problem;
use yii\filters\AccessControl;    // 权限控制
use app\components\AccessRule;    // 权限控制
use app\models\User;
use app\modules\polygon\models\ProblemSearch;

/**
 * Default controller for the `polygon` module
 */
class DefaultController extends Controller
{
    public function behaviors()    // 权限控制
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'ruleConfig' => [
                    'class' => AccessRule::className(),
                ],
                'rules' => [
                    [
                        'allow' => true,
                        // Allow users, moderators and admins to create
                        'roles' => [    // 允许访问列表
                            User::ROLE_ADMIN,
                            User::ROLE_VIP
                        ],
                    ],
                ],
            ],
        ];
    }
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new ProblemSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
            'searchModel' => $searchModel
        ]);
    }
}
