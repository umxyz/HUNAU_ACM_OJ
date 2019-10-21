<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%contest_print}}".
 *
 * @property int $id
 * @property int $user_id
 * @property int $source
 * @property string $created_at
 * @property int $contest_id
 * @property int $status
 */
class ContestPrint extends ActiveRecord
{
    /**
     * 管理员是否已读此打印消息
     */
    const STATUS_UNREAD = 0;
    const STATUS_HAVE_READ = 1;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%contest_print}}';
    }

    public function behaviors()
    {
        return [
            'timestamp' => $this->timeStampBehavior(false),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['source', 'created_at'], 'string'],
            [['source'], 'required'],
            [['id', 'user_id', 'contest_id', 'status', 'contest_id'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'source' => 'Source',
            'created_at' => Yii::t('app', 'Created At'),
            'status' => Yii::t('app', 'Status'),
            'contest_id' => 'Contest Id'
        ];
    }

    /**
     * This is invoked before the record is saved.
     * @return boolean whether the record should be saved.
     */
    public function beforeSave($insert)
    {
        if (parent::beforeSave($insert)) {
            if ($this->isNewRecord) {
                $this->user_id = Yii::$app->user->id;
                // 给所有管理员发送弹窗提醒
                try {
                    $client = stream_socket_client('tcp://0.0.0.0:2121', $errno, $errmsg, 1);
                    $uids = Yii::$app->db->createCommand('SELECT id FROM user WHERE role=' . User::ROLE_ADMIN)->queryColumn();
                    $content = '比赛：' . $this->contest->title .  ' - 提交了新的打印请求。';
                    foreach ($uids as $uid) {
                        fwrite($client, json_encode([
                            'uid' => $uid,
                            'content' => $content
                        ]) . "\n");
                    }
                } catch (\Exception $e) {
                    echo 'Caught exception: ',  $e->getMessage(), "\n";
                }
            }
            return true;
        } else {
            return false;
        }
    }

    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }

    public function getContest()
    {
        return $this->hasOne(Contest::className(), ['id' => 'contest_id']);
    }
}
