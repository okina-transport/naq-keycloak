<#assign requiredActionsText>
    <#if requiredActions??><#list requiredActions><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></#list><#else></#if>
</#assign>

${msg("executeActionsBody",link, linkExpiration, realmName, requiredActionsText, user.getUsername())}



