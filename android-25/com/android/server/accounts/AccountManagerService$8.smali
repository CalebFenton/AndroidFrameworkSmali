.class Lcom/android/server/accounts/AccountManagerService$8;
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
    .line 2430
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    move-object/from16 v0, p10

    #@4
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    #@6
    move-object/from16 v0, p11

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    #@a
    move-object/from16 v0, p12

    #@c
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    #@e
    move/from16 v0, p13

    #@10
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    #@12
    move/from16 v0, p14

    #@14
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    #@16
    move/from16 v0, p15

    #@18
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    #@1a
    move/from16 v0, p16

    #@1c
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    #@1e
    move-object/from16 v0, p17

    #@20
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    #@22
    move-object/from16 v0, p18

    #@24
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    #@26
    move-object/from16 v0, p19

    #@28
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

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
    .line 2437
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2461
    invoke-static {p1, v6}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@5
    .line 2462
    if-eqz p1, :cond_5

    #@7
    .line 2463
    const-string/jumbo v0, "authTokenLabelKey"

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 2464
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@12
    .line 2465
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    #@14
    .line 2467
    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    #@16
    .line 2468
    new-instance v4, Landroid/accounts/AccountAuthenticatorResponse;

    #@18
    invoke-direct {v4, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@1b
    .line 2469
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    #@1d
    .line 2464
    invoke-static/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->-wrap0(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    #@20
    move-result-object v4

    #@21
    .line 2471
    .local v4, "intent":Landroid/content/Intent;
    new-instance v10, Landroid/os/Bundle;

    #@23
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@26
    .line 2472
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "intent"

    #@29
    invoke-virtual {v10, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@2c
    .line 2473
    invoke-virtual {p0, v10}, Lcom/android/server/accounts/AccountManagerService$8;->onResult(Landroid/os/Bundle;)V

    #@2f
    .line 2474
    return-void

    #@30
    .line 2476
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v0, "authtoken"

    #@33
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    .line 2477
    .local v7, "authToken":Ljava/lang/String;
    if-eqz v7, :cond_4

    #@39
    .line 2478
    const-string/jumbo v0, "authAccount"

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v11

    #@40
    .line 2479
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v0, "accountType"

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v13

    #@47
    .line 2480
    .local v13, "type":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_1

    #@4d
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_2

    #@53
    .line 2482
    :cond_1
    const-string/jumbo v0, "the type and name should not be empty"

    #@56
    .line 2481
    const/4 v1, 0x5

    #@57
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$8;->onError(ILjava/lang/String;)V

    #@5a
    .line 2483
    return-void

    #@5b
    .line 2485
    :cond_2
    new-instance v12, Landroid/accounts/Account;

    #@5d
    invoke-direct {v12, v11, v13}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@60
    .line 2486
    .local v12, "resultAccount":Landroid/accounts/Account;
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    #@62
    if-nez v0, :cond_3

    #@64
    .line 2487
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@66
    .line 2488
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@68
    .line 2490
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    #@6a
    .line 2487
    invoke-static {v0, v1, v12, v2, v7}, Lcom/android/server/accounts/AccountManagerService;->-wrap6(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    #@6d
    .line 2494
    :cond_3
    const-string/jumbo v0, "android.accounts.expiry"

    #@70
    const-wide/16 v2, 0x0

    #@72
    .line 2493
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@75
    move-result-wide v8

    #@76
    .line 2495
    .local v8, "expiryMillis":J
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    #@78
    if-eqz v0, :cond_4

    #@7a
    .line 2496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7d
    move-result-wide v0

    #@7e
    cmp-long v0, v8, v0

    #@80
    if-lez v0, :cond_4

    #@82
    .line 2497
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@84
    .line 2498
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@86
    .line 2499
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    #@88
    .line 2500
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    #@8a
    .line 2501
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    #@8c
    .line 2502
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    #@8e
    .line 2497
    invoke-static/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService;->-wrap18(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    #@91
    .line 2508
    .end local v8    # "expiryMillis":J
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "resultAccount":Landroid/accounts/Account;
    .end local v13    # "type":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "intent"

    #@94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@97
    move-result-object v4

    #@98
    check-cast v4, Landroid/content/Intent;

    #@9a
    .line 2509
    .restart local v4    # "intent":Landroid/content/Intent;
    if-eqz v4, :cond_5

    #@9c
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    #@9e
    if-eqz v0, :cond_5

    #@a0
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    #@a2
    if-eqz v0, :cond_6

    #@a4
    .line 2524
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "authToken":Ljava/lang/String;
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    #@a7
    .line 2460
    return-void

    #@a8
    .line 2517
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "authToken":Ljava/lang/String;
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@ab
    move-result v0

    #@ac
    .line 2516
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accounts/AccountManagerService$8;->checkKeyIntent(ILandroid/content/Intent;)V

    #@af
    .line 2519
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@b1
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@b3
    .line 2520
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    #@b5
    const-string/jumbo v3, "authFailedMessage"

    #@b8
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@bb
    move-result-object v3

    #@bc
    .line 2521
    const-string/jumbo v5, "android"

    #@bf
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@c1
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@c4
    move-result v6

    #@c5
    .line 2519
    invoke-static/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->-wrap15(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    #@c8
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
    .line 2452
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2453
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@6
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    #@8
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    #@b
    .line 2449
    :goto_0
    return-void

    #@c
    .line 2455
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@e
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    #@10
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    #@12
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

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
    .line 2440
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@9
    .line 2441
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
    .line 2442
    const-string/jumbo v1, ", "

    #@20
    .line 2441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 2442
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    #@26
    .line 2441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 2443
    const-string/jumbo v1, ", authTokenType "

    #@2d
    .line 2441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    .line 2443
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    #@33
    .line 2441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 2444
    const-string/jumbo v1, ", loginOptions "

    #@3a
    .line 2441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 2444
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    #@40
    .line 2441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 2445
    const-string/jumbo v1, ", notifyOnAuthFailure "

    #@47
    .line 2441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    .line 2445
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    #@4d
    .line 2441
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
