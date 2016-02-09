.class Lcom/android/server/accounts/AccountManagerService$6;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$callerPkgSigDigest:[B

.field final synthetic val$callerUid:I

.field final synthetic val$customTokens:Z

.field final synthetic val$loginOptions:Landroid/os/Bundle;

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$permissionGranted:Z


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "this$0_1"    # Lcom/android/server/accounts/AccountManagerService;
    .param p3, "$anonymous0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p4, "$anonymous1"    # Landroid/accounts/IAccountManagerResponse;
    .param p5, "$anonymous2"    # Ljava/lang/String;
    .param p6, "$anonymous3"    # Z
    .param p7, "$anonymous4"    # Z
    .param p8, "$anonymous5"    # Ljava/lang/String;
    .param p9, "$anonymous6"    # Z
    .param p10, "val$loginOptions"    # Landroid/os/Bundle;
    .param p11, "val$account"    # Landroid/accounts/Account;
    .param p12, "val$authTokenType"    # Ljava/lang/String;
    .param p13, "val$notifyOnAuthFailure"    # Z
    .param p14, "val$permissionGranted"    # Z
    .param p15, "val$callerUid"    # I
    .param p16, "val$customTokens"    # Z
    .param p17, "val$callerPkg"    # Ljava/lang/String;
    .param p18, "val$callerPkgSigDigest"    # [B
    .param p19, "val$accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 1926
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    move-object/from16 v0, p10

    #@4
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$loginOptions:Landroid/os/Bundle;

    #@6
    move-object/from16 v0, p11

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    #@a
    move-object/from16 v0, p12

    #@c
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    #@e
    move/from16 v0, p13

    #@10
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$notifyOnAuthFailure:Z

    #@12
    move/from16 v0, p14

    #@14
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$permissionGranted:Z

    #@16
    move/from16 v0, p15

    #@18
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$callerUid:I

    #@1a
    move/from16 v0, p16

    #@1c
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$customTokens:Z

    #@1e
    move-object/from16 v0, p17

    #@20
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$callerPkg:Ljava/lang/String;

    #@22
    move-object/from16 v0, p18

    #@24
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$callerPkgSigDigest:[B

    #@26
    move-object/from16 v0, p19

    #@28
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@2a
    move-object v1, p0

    #@2b
    move-object v2, p1

    #@2c
    move-object v3, p3

    #@2d
    move-object v4, p4

    #@2e
    move-object v5, p5

    #@2f
    move/from16 v6, p6

    #@31
    move/from16 v7, p7

    #@33
    move-object/from16 v8, p8

    #@35
    move/from16 v9, p9

    #@37
    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    #@3a
    .line 1928
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1952
    if-eqz p1, :cond_5

    #@2
    .line 1953
    const-string/jumbo v0, "authTokenLabelKey"

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1954
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@d
    .line 1955
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    #@f
    .line 1956
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$callerUid:I

    #@11
    .line 1957
    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    #@13
    invoke-direct {v3, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@16
    .line 1958
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    #@18
    .line 1954
    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/server/accounts/AccountManagerService;->-wrap0(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    move-result-object v4

    #@1c
    .line 1959
    .local v4, "intent":Landroid/content/Intent;
    new-instance v10, Landroid/os/Bundle;

    #@1e
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@21
    .line 1960
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "intent"

    #@24
    invoke-virtual {v10, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@27
    .line 1961
    invoke-virtual {p0, v10}, Lcom/android/server/accounts/AccountManagerService$6;->onResult(Landroid/os/Bundle;)V

    #@2a
    .line 1962
    return-void

    #@2b
    .line 1964
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v0, "authtoken"

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    .line 1965
    .local v7, "authToken":Ljava/lang/String;
    if-eqz v7, :cond_4

    #@34
    .line 1966
    const-string/jumbo v0, "authAccount"

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v11

    #@3b
    .line 1967
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v0, "accountType"

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v13

    #@42
    .line 1968
    .local v13, "type":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@45
    move-result v0

    #@46
    if-nez v0, :cond_1

    #@48
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_2

    #@4e
    .line 1970
    :cond_1
    const-string/jumbo v0, "the type and name should not be empty"

    #@51
    .line 1969
    const/4 v1, 0x5

    #@52
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$6;->onError(ILjava/lang/String;)V

    #@55
    .line 1971
    return-void

    #@56
    .line 1973
    :cond_2
    new-instance v12, Landroid/accounts/Account;

    #@58
    invoke-direct {v12, v11, v13}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5b
    .line 1974
    .local v12, "resultAccount":Landroid/accounts/Account;
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$customTokens:Z

    #@5d
    if-nez v0, :cond_3

    #@5f
    .line 1975
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@61
    .line 1976
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@63
    .line 1978
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    #@65
    .line 1975
    invoke-static {v0, v1, v12, v2, v7}, Lcom/android/server/accounts/AccountManagerService;->-wrap3(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    #@68
    .line 1982
    :cond_3
    const-string/jumbo v0, "android.accounts.expiry"

    #@6b
    const-wide/16 v2, 0x0

    #@6d
    .line 1981
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@70
    move-result-wide v8

    #@71
    .line 1983
    .local v8, "expiryMillis":J
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$customTokens:Z

    #@73
    if-eqz v0, :cond_4

    #@75
    .line 1984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@78
    move-result-wide v0

    #@79
    cmp-long v0, v8, v0

    #@7b
    if-lez v0, :cond_4

    #@7d
    .line 1985
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@7f
    .line 1986
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$6;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@81
    .line 1987
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    #@83
    .line 1988
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$callerPkg:Ljava/lang/String;

    #@85
    .line 1989
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$callerPkgSigDigest:[B

    #@87
    .line 1990
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    #@89
    .line 1985
    invoke-static/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService;->-wrap12(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    #@8c
    .line 1996
    .end local v8    # "expiryMillis":J
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "resultAccount":Landroid/accounts/Account;
    .end local v13    # "type":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "intent"

    #@8f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@92
    move-result-object v4

    #@93
    check-cast v4, Landroid/content/Intent;

    #@95
    .line 1997
    .restart local v4    # "intent":Landroid/content/Intent;
    if-eqz v4, :cond_5

    #@97
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$notifyOnAuthFailure:Z

    #@99
    if-eqz v0, :cond_5

    #@9b
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$customTokens:Z

    #@9d
    if-eqz v0, :cond_6

    #@9f
    .line 2003
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "authToken":Ljava/lang/String;
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    #@a2
    .line 1951
    return-void

    #@a3
    .line 1998
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "authToken":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@a5
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@a7
    .line 1999
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    #@a9
    const-string/jumbo v3, "authFailedMessage"

    #@ac
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@af
    move-result-object v3

    #@b0
    .line 2000
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@b2
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@b5
    move-result v5

    #@b6
    .line 1998
    invoke-static/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->-wrap8(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    #@b9
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
    .line 1943
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$permissionGranted:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1944
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@6
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    #@8
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    #@b
    .line 1940
    :goto_0
    return-void

    #@c
    .line 1946
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@e
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    #@10
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    #@12
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$loginOptions:Landroid/os/Bundle;

    #@14
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@17
    goto :goto_0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 1931
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$loginOptions:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$loginOptions:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@9
    .line 1932
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ", getAuthToken"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 1933
    const-string/jumbo v1, ", "

    #@20
    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 1933
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    #@26
    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1934
    const-string/jumbo v1, ", authTokenType "

    #@2d
    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    .line 1934
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    #@33
    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 1935
    const-string/jumbo v1, ", loginOptions "

    #@3a
    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 1935
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$loginOptions:Landroid/os/Bundle;

    #@40
    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 1936
    const-string/jumbo v1, ", notifyOnAuthFailure "

    #@47
    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    .line 1936
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$notifyOnAuthFailure:Z

    #@4d
    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    return-object v0
.end method
