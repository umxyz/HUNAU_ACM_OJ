<?php
namespace app\models;

use Yii;
use yii\base\Model;
use app\models\User;

/**
 * Signup form
 *
 * @author Shiyang <dr@shiyang.me>
 */
class SignupForm extends Model
{
    public $username;
    public $email;
    public $password;
    public $verifyCode;
    public $studentNumber;
    public $major;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['username', 'filter', 'filter' => 'trim'],
            ['username', 'required'],
            ['username', 'unique', 'targetClass' => '\app\models\User', 'message' => '用户名已被占用'],
            ['username', 'string', 'max' => 16, 'min' => 4],
            ['username', 'match', 'pattern' => '/^(?!_)(?!.*?_$)(?!\d{4,16}$)[a-z\d_]{4,16}$/i', 'message' => '用户名只能以数字、字母、下划线，且非纯数字，长度在 4 - 16 位之间'],
            ['username', 'match', 'pattern' => '/^(?!c[\d]+user[\d])/', 'message' => '以c+数字+user+数字作为账户名系统保留'],

            ['email', 'filter', 'filter' => 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'unique', 'targetClass' => '\app\models\User', 'message' => '邮箱已被占用'],

            ['major', 'filter', 'filter' => 'trim'],
            ['major', 'required'],

            ['studentNumber', 'filter', 'filter' => 'trim'],
            ['studentNumber', 'required'],
            ['studentNumber', 'string', 'max' => 12, 'min' => 12],
            ['studentNumber', 'validateStudentNumber'],

            ['password', 'required'],
            ['password', 'string', 'min' => 6, 'max' => 16],

            ['verifyCode', 'captcha']
        ];
    }
    /*
    * 验证学号
    * @param string $attribute 当前被验证的特性
    * @param array $params 以名-值对形势提供的额外参数
    */
    public function validateStudentNumber($attribute, $params)
    {
        /*
        '计算机'     41842
        '东方计算机' 41903
        '智能'      41892
        '大数据'    41891
        '互联网'    41894
        '电信'      41875
        '物联网'    41882
        */
        $rule = [
            "计算机" =>      '/^20[1-2][0-9][4][1][8][4][2][1-5][0-3][0-9]$/i',
            "东方计算机" =>  '/^20[1-2][0-9][4][1][9][0][3][1-5][0-3][0-9]$/i',
            "智能" =>       '/^20[1-2][0-9][4][1][8][9][2][1-5][0-3][0-9]$/i',
            "大数据" =>     '/^20[1-2][0-9][4][1][8][9][1][1-5][0-3][0-9]$/i',
            "互联网" =>     '/^20[1-2][0-9][4][1][8][9][4][1-5][0-3][0-9]$/i',
            "电信" =>       '/^20[1-2][0-9][4][1][8][7][5][1-5][0-3][0-9]$/i',
            "物联网" =>     '/^20[1-2][0-9][4][1][8][8][2][1-5][0-3][0-9]$/i',
        ];
        // print_r($this->major); die;
        if (!preg_match($rule[$this->major], $this->$attribute)) {
            $this->addError($attribute, '学号和专业不匹配');
        }
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'username' => Yii::t('app', 'Username'),
            'password' => Yii::t('app', 'Password'),
            'email' => Yii::t('app', 'Email'),
            'verifyCode' => Yii::t('app', 'Verify Code'),
            'studentNumber' => Yii::t('app', 'Student Number'),
            'major' => '专业'
        ];
    }

    /**
     * Signs user up.
     *
     * @return null whether the creating new account was successful and email was sent
     * @throws \yii\db\Exception
     */
    public function signup()
    {
        if (!$this->validate()) {
            return null;
        }
        $user = new User();
        $user->username = $this->username;
        $user->nickname = $this->username;
        $user->email = $this->email;
        $user->is_verify_email = User::VERIFY_EMAIL_NO;
        $user->setPassword($this->password);
        $user->generateAuthKey();
        if (Yii::$app->setting->get('mustVerifyEmail')) {
            // 发送邮箱
            $user->generateEmailVerificationToken();
            if (!$this->sendEmail($user)) {
                Yii::$app->session->setFlash('error',
                    '验证邮箱发送失败。可能原因：1. 该邮箱不存在；2. 本网站系统邮箱配置信息有误，需联系管理员检查系统的发送邮箱配置信息。');
                return null;
            }
            $user->status = User::STATUS_INACTIVE;
        } else {
            $user->status = User::STATUS_ACTIVE;
        }
        if (!$user->save()) {
            return null;
        }
        Yii::$app->db->createCommand()->insert('{{%user_profile}}', [
            'user_id' => $user->id,
            'student_number' => $this->studentNumber,
            'major' => $this->major
        ])->execute();
        return $user;
    }

    /**
     * Sends confirmation email to user
     * @param User $user user model to with email should be send
     * @return bool whether the email was sent
     */
    protected function sendEmail($user)
    {
        return Yii::$app
            ->mailer
            ->compose(
                ['html' => 'emailVerify-html', 'text' => 'emailVerify-text'],
                ['user' => $user]
            )
            ->setFrom([Yii::$app->setting->get('emailUsername') => Yii::$app->setting->get('ojName')])
            ->setTo($this->email)
            ->setSubject('帐号注册 - ' . Yii::$app->setting->get('ojName'))
            ->send();
    }
}
