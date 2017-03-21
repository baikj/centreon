 <table class="formTable table">
	<tr class="ListHeader">
		<td class="FormHeader" colspan="2">
			<h3>| {$headerMenu_title}</h3>
		</td>
	</tr>
 	<tr class="list_one">
 		<td class="FormRowField">{$headerMenu_rname}</td>
 		<td class="FormRowValue">{$module_rname}</td>
 	</tr>
 	<tr class="list_two">
 		<td class="FormRowField">{$headerMenu_release}</td>
 		<td class="FormRowValue">{$module_release}</td>
 	</tr>
 	<tr class="list_one">
 		<td class="FormRowField">{$headerMenu_author}</td>
 		<td class="FormRowValue">{$module_author}</td>
 	</tr>
 	<tr class="list_two">
 		<td class="FormRowField">{$headerMenu_infos}</td>
 		<td class="FormRowValue">{$module_infos}</td>
 	</tr>
 	{if $module_infosTxt}
	 	<tr class="list_one">
	 		<td class="FormRowField" colspan="2">
	 			{$module_infosTxt}
	 		</td>
	 	</tr>
 	{/if}
 	{if $form1.install.html || $form1.list.html}
 	<tr class="list_one">
 		<td colspan="2" align="center">
 			{if $output1}
 				{$output1}<br />
 			{/if}
 			{if $output2}
 				{$output2}<br />
 			{/if}
 			{if $output3}
 				{$output3}<br />
 			{/if}
 			{if $output4}
 				{$output4}<br />
 			{/if}
 			 <form {$form1.attributes}>	
	 		<br />&nbsp;{$form1.install.html}&nbsp{$form1.list.html}<br />
	 		 {$form1.hidden}
	 		 </form>
  		</td>
 	</tr>
 	{/if}
 	{if $form.list.html}
	 	<tr class="list_one">
	 		<td colspan="2" align="center">
	 			<form {$form.attributes}>
	 			<br />
	 			{$form.list.html}
	 			 </form>
	 		</td>
	 	</tr>
	 {/if}		 		 	
 </table>


<br /><br />
<form {$form.attributes}>
  <table class="formTable table">
	<tr class="ListHeader">
		<td class="FormHeader" colspan="2">
			<h3>| {$headerMenu_title2}</h3>
		</td>
	</tr>
	<tr class="list_one">
		<td class="FormRowField">{$headerMenu_rname}</td>
		<td class="FormRowValue">{$elemArr[elem].upgrade_rname}</td>
	</tr>
	<tr class="list_two">
		<td class="FormRowField">{$headerMenu_release_from}</td>
		<td class="FormRowValue">{$elemArr[elem].upgrade_release_from}</td>
	</tr>
	<tr class="list_one">
		<td class="FormRowField">{$headerMenu_release_to}</td>
		<td class="FormRowValue">{$elemArr[elem].upgrade_release_to}</td>
	</tr>
	<tr class="list_two">
		<td class="FormRowField">{$headerMenu_author}</td>
		<td class="FormRowValue">{$elemArr[elem].upgrade_author}</td>
	</tr>
	<tr class="list_one">
		<td class="FormRowField">{$headerMenu_infos}</td>
		<td class="FormRowValue">{$elemArr[elem].upgrade_infos}</td>
	</tr>
	<tr class="list_two">
		<td class="FormRowField">{$headerMenu_isvalid}</td>
		<td class="FormRowValue">{$elemArr[elem].upgrade_is_validUp}</td>
	</tr>
	{if $elemArr[elem].upgrade_infosTxt}
		<tr class="list_one">
			<td class="FormRowField" colspan="2">
				{$elemArr[elem].upgrade_infosTxt}
			</td>
		</tr>
	{/if}
	{if $elemArr[elem].upgrade_choice}
		<tr class="list_one">
			<td colspan="2" align="center">{$form.upgrade.html}&nbsp{$form.list.html}</td>
		</tr>
	 {/if}
 </table>
 {$form.hidden}
</form>
 <br />