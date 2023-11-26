<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Eintrag</h1>
    <hr>
    <form action="/login " method="post">
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="username">
            <div id="email" class="invalid-feedback">
                Ungültige E-Mail
            </div>
        </div>
        <div class="form-group">
            <label for="password">Passwort</label>
            <input type="password" class="form-control" id="password" name="password">
            <div id="password" class="invalid-feedback">
                Falsches Passwort
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 100%" class="btn btn-dark">Anmelden</button>
    </form>
    <hr>
    <h2>Sie haben noch kein EASYSELL-Konto?<a href="/registration"> Melden Sie sich an!</a></h2>
</@t.template>