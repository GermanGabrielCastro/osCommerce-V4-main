{use class="Yii"}
<form action="{Yii::getAlias('@web')}/design/box-save" method="post" id="box-save">
  <input type="hidden" name="id" value="{$id}"/>
  <div class="popup-heading">
    {$smarty.const.TEXT_WIDGET_DELIVERY_LOCATION_PRODUCTS}
  </div>
  <div class="popup-content">




    <div class="tabbable tabbable-custom">
      <ul class="nav nav-tabs">

        <li class="active"><a href="#type" data-toggle="tab">{$smarty.const.TEXT_MAX_PRODUCTS}</a></li>
        <li><a href="#style" data-toggle="tab">{$smarty.const.HEADING_STYLE}</a></li>
        <li><a href="#align" data-toggle="tab">{$smarty.const.HEADING_WIDGET_ALIGN}</a></li>
        <li><a href="#visibility" data-toggle="tab">{$smarty.const.TEXT_VISIBILITY_ON_PAGES}</a></li>

      </ul>
      <div class="tab-content">
        <div class="tab-pane active menu-list" id="type">


          <div class="setting-row">
            <label for="">{$smarty.const.TEXT_MAX_PRODUCTS}</label>
            <input type="text" name="setting[0][max_products]" class="form-control" value="{$settings[0].max_products}"/>
          </div>

          <div class="setting-row">
            <label for="">Page</label>
            <select name="setting[0][page_id]" id="" class="form-control">
              {foreach $pagesTree as $page}
                <option value="{$page.id}"{if $settings[0].page_id == $page.id} selected{/if}>{$page.path}</option>
              {/foreach}
            </select>
          </div>

          <div class="setting-row">
            <label for="">{$smarty.const.HIDE_PARENTS_IF_EMPTY}</label>
            <select name="setting[0][hide_parents]" id="" class="form-control">
              <option value=""{if $settings[0].hide_parents == ''} selected{/if}>{$smarty.const.TEXT_NO}</option>
              <option value="1"{if $settings[0].hide_parents == '1'} selected{/if}>1</option>
              <option value="2"{if $settings[0].hide_parents == '2'} selected{/if}>2</option>
              <option value="3"{if $settings[0].hide_parents == '3'} selected{/if}>3</option>
              <option value="4"{if $settings[0].hide_parents == '4'} selected{/if}>4</option>
            </select>
          </div>

          {include 'include/ajax.tpl'}


        </div>
        <div class="tab-pane" id="style">
          {include 'include/style.tpl'}
        </div>
        <div class="tab-pane" id="align">
          {include 'include/align.tpl'}
        </div>
        <div class="tab-pane" id="visibility">
          {include 'include/visibility.tpl'}
        </div>

      </div>
    </div>




  </div>
  <div class="popup-buttons">
    <button type="submit" class="btn btn-primary btn-save">{$smarty.const.IMAGE_SAVE}</button>
    <span class="btn btn-cancel">{$smarty.const.IMAGE_CANCEL}</span>
  </div>
</form>