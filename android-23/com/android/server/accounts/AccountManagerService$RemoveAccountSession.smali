.class Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAccountSession"
.end annotation


# instance fields
.field final mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "account"    # Landroid/accounts/Account;
    .param p5, "expectActivityLaunch"    # Z

    #@0
    .prologue
    .line 1315
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    .line 1317
    iget-object v4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@4
    .line 1318
    iget-object v7, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@6
    const/4 v6, 0x1

    #@7
    .line 1319
    const/4 v8, 0x0

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move-object v3, p3

    #@c
    move v5, p5

    #@d
    .line 1317
    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    #@10
    .line 1320
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    #@12
    .line 1316
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1336
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v4, "booleanResult"

    #@5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 1337
    const-string/jumbo v4, "intent"

    #@e
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 1357
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    #@17
    .line 1335
    return-void

    #@18
    .line 1338
    :cond_1
    const-string/jumbo v4, "booleanResult"

    #@1b
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    .line 1339
    .local v1, "removalAllowed":Z
    if-eqz v1, :cond_2

    #@21
    .line 1340
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@23
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@25
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    #@27
    invoke-static {v4, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->-wrap2(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    #@2a
    .line 1342
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@2d
    move-result-object v2

    #@2e
    .line 1343
    .local v2, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v2, :cond_0

    #@30
    .line 1344
    const-string/jumbo v4, "AccountManagerService"

    #@33
    const/4 v5, 0x2

    #@34
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_3

    #@3a
    .line 1345
    const-string/jumbo v4, "AccountManagerService"

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->getClass()Ljava/lang/Class;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    const-string/jumbo v6, " calling onResult() on response "

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 1348
    :cond_3
    new-instance v3, Landroid/os/Bundle;

    #@62
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@65
    .line 1349
    .local v3, "result2":Landroid/os/Bundle;
    const-string/jumbo v4, "booleanResult"

    #@68
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@6b
    .line 1351
    :try_start_0
    invoke-interface {v2, v3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    goto :goto_0

    #@6f
    .line 1352
    :catch_0
    move-exception v0

    #@70
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    #@4
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    #@7
    .line 1330
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ", removeAccount"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 1326
    const-string/jumbo v1, ", account "

    #@17
    .line 1325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 1326
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    #@1d
    .line 1325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method
