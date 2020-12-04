$PromptStem, $PromptEnd = "└", "$ "
$ContPromptEnd = "|  "
Set-PSReadLineOption -PromptText $PromptEnd
Set-PSReadLineOption -ContinuationPrompt $ContPromptEnd