.class Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestFeaturesSession"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mFeatures:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "account"    # Landroid/accounts/Account;
    .param p5, "features"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1019
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@3
    .line 1021
    iget-object v4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@5
    .line 1022
    iget-object v7, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@7
    const/4 v6, 0x1

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move-object v3, p3

    #@c
    move v8, v5

    #@d
    .line 1021
    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    #@10
    .line 1024
    iput-object p5, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    #@12
    .line 1025
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    #@14
    .line 1020
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 1039
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@4
    move-result-object v2

    #@5
    .line 1040
    .local v2, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v2, :cond_2

    #@7
    .line 1042
    if-nez p1, :cond_0

    #@9
    .line 1043
    :try_start_0
    const-string/jumbo v3, "null bundle"

    #@c
    const/4 v4, 0x5

    #@d
    invoke-interface {v2, v4, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    #@10
    .line 1044
    return-void

    #@11
    .line 1046
    :cond_0
    const-string/jumbo v3, "AccountManagerService"

    #@14
    const/4 v4, 0x2

    #@15
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 1047
    const-string/jumbo v3, "AccountManagerService"

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, " calling onResult() on response "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 1050
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    #@43
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@46
    .line 1051
    .local v1, "newResult":Landroid/os/Bundle;
    const-string/jumbo v3, "booleanResult"

    #@49
    .line 1052
    const-string/jumbo v4, "booleanResult"

    #@4c
    const/4 v5, 0x0

    #@4d
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@50
    move-result v4

    #@51
    .line 1051
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@54
    .line 1053
    invoke-interface {v2, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 1038
    .end local v1    # "newResult":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    #@58
    .line 1054
    :catch_0
    move-exception v0

    #@59
    .line 1056
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "AccountManagerService"

    #@5c
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_2

    #@62
    .line 1057
    const-string/jumbo v3, "AccountManagerService"

    #@65
    const-string/jumbo v4, "failure while notifying response"

    #@68
    invoke-static {v3, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b
    goto :goto_0
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@2
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    #@4
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    #@6
    invoke-interface {v1, p0, v2, v3}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1029
    :goto_0
    return-void

    #@a
    .line 1032
    :catch_0
    move-exception v0

    #@b
    .line 1033
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "remote exception"

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {p0, v2, v1}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->onError(ILjava/lang/String;)V

    #@12
    goto :goto_0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, ", hasFeatures"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 1066
    const-string/jumbo v2, ", "

    #@18
    .line 1065
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 1066
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    #@1e
    .line 1065
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 1067
    const-string/jumbo v2, ", "

    #@25
    .line 1065
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 1067
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    #@2b
    if-eqz v2, :cond_0

    #@2d
    const-string/jumbo v0, ","

    #@30
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    #@32
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 1065
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    return-object v0
.end method
