<?php
/**
 * This file is part of osCommerce ecommerce platform.
 * osCommerce the ecommerce
 *
 * @link https://www.oscommerce.com
 * @copyright Copyright (c) 2000-2022 osCommerce LTD
 *
 * Released under the GNU General Public License
 * For the full copyright and license information, please view the LICENSE.TXT file that was distributed with this source code.
 */

namespace backend\design\boxes;

use Yii;
use yii\base\Widget;

class Tabs extends Widget
{

    public $id;
    public $params;
    public $settings;
    public $visibility;

    public function init()
    {
        parent::init();
    }

    public function run()
    {
        global $languages_id;

        $oldTabs = false;

        $languages = \common\helpers\Language::get_languages();
        $lang = array();
        for ($i=0, $n=sizeof($languages); $i<$n; $i++) {
            $languages[$i]['logo'] = $languages[$i]['image'];
            $lang[] = $languages[$i];

            for ($tab = 1; $tab < 11; $tab++){
                if ($this->settings[$languages[$i]['id']]['tab_' . $tab] ?? null) {
                    $oldTabs = true;
                    break;
                }
            }
        }


        return $this->render('tabs.tpl', [
            'id' => $this->id,
            'params' => $this->params,
            'settings' => $this->settings,
            'languages' => $lang,
            'languages_id' => $languages_id,
            'visibility' => $this->visibility,
            'oldTabs' => $oldTabs,
        ]);
    }
}