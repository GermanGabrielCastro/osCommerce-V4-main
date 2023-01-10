<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "email_templates_to_design_template".
 *
 * @property integer $id
 * @property integer $email_templates_id
 * @property integer $platform_id
 * @property string $email_design_template
 */
class EmailTemplatesToDesignTemplate extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'email_templates_to_design_template';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['email_templates_id', 'platform_id', 'email_design_template'], 'required'],
            [['email_templates_id', 'platform_id'], 'integer'],
            [['email_design_template'], 'string', 'max' => 256]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'email_templates_id' => 'Email Templates ID',
            'platform_id' => 'Platform ID',
            'email_design_template' => 'Email Design Template',
        ];
    }
}
