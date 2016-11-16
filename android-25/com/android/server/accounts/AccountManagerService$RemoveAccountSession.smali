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
    .line 1744
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    .line 1746
    iget-object v4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@4
    .line 1747
    iget-object v7, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@6
    const/4 v6, 0x1

    #@7
    .line 1748
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
    .line 1746
    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    #@10
    .line 1749
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    #@12
    .line 1745
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1765
    const/4 v4, 0x1

    #@1
    invoke-static {p1, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@4
    .line 1766
    if-eqz p1, :cond_0

    #@6
    const-string/jumbo v4, "booleanResult"

    #@9
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 1767
    const-string/jumbo v4, "intent"

    #@12
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 1787
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    #@1b
    .line 1764
    return-void

    #@1c
    .line 1768
    :cond_1
    const-string/jumbo v4, "booleanResult"

    #@1f
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@22
    move-result v1

    #@23
    .line 1769
    .local v1, "removalAllowed":Z
    if-eqz v1, :cond_2

    #@25
    .line 1770
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@27
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@29
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    #@2b
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->getCallingUid()I

    #@2e
    move-result v7

    #@2f
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/accounts/AccountManagerService;->-wrap5(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    #@32
    .line 1772
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@35
    move-result-object v2

    #@36
    .line 1773
    .local v2, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v2, :cond_0

    #@38
    .line 1774
    const-string/jumbo v4, "AccountManagerService"

    #@3b
    const/4 v5, 0x2

    #@3c
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_3

    #@42
    .line 1775
    const-string/jumbo v4, "AccountManagerService"

    #@45
    new-instance v5, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->getClass()Ljava/lang/Class;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    const-string/jumbo v6, " calling onResult() on response "

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 1778
    :cond_3
    new-instance v3, Landroid/os/Bundle;

    #@6a
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@6d
    .line 1779
    .local v3, "result2":Landroid/os/Bundle;
    const-string/jumbo v4, "booleanResult"

    #@70
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@73
    .line 1781
    :try_start_0
    invoke-interface {v2, v3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@76
    goto :goto_0

    #@77
    .line 1782
    :catch_0
    move-exception v0

    #@78
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
    .line 1760
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    #@4
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    #@7
    .line 1759
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 1754
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
    .line 1755
    const-string/jumbo v1, ", account "

    #@17
    .line 1754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 1755
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    #@1d
    .line 1754
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
