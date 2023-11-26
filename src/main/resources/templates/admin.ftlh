<#import "blocks/template.ftlh" as t>
<@t.template user>
    `<h1 style="text-align: center">Administrator-Panel</h1><hr>
    <table class="table table-hover table-dark">
        <tr>
            <th scope="col">Email</th>
            <th scope="col">Rufnummer</th>
            <th scope="col">Tätigkeit</th>
            <th scope="col">Raleigh</th>
            <th scope="col">Verbot</th>
            <th scope="col">Bearbeitung</th>
            <th scope="col">Ausführliche Informationen</th>
        </tr>
        <#list users as user>
            <tr>
                <th>${user.email}</th>
                <th>${user.phoneNumber}</th>
                <th><#if user.active>true<#else>false</#if></th>
                <th><#list user.roles as role>${role}</#list></th>
                <th>
                    <form action="/admin/user/ban/${user.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="submit" class="btn btn-light" value="Ban">
                    </form>
                </th>
                <th><a href="/admin/user/edit/${user.id}">Bearbeiten</a></th>
                <th><a href="/user/${user.id}">Ausführliche Informationen</a></th>
            </tr>
        <#else>
            <h3>Es gibt keine Benutzer</h3>
        </#list>
    </table>
</@t.template>