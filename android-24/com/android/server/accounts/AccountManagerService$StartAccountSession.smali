.class abstract Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "StartAccountSession"
.end annotation


# instance fields
.field private final mIsPasswordForwardingAllowed:Z

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "accountName"    # Ljava/lang/String;
    .param p7, "authDetailsRequired"    # Z
    .param p8, "updateLastAuthenticationTime"    # Z
    .param p9, "isPasswordForwardingAllowed"    # Z

    #@0
    .prologue
    .line 2726
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    .line 2736
    const/4 v7, 0x1

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move-object v4, p3

    #@7
    move-object v5, p4

    #@8
    move/from16 v6, p5

    #@a
    move-object/from16 v8, p6

    #@c
    move/from16 v9, p7

    #@e
    move/from16 v10, p8

    #@10
    .line 2735
    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    #@13
    .line 2738
    move/from16 v0, p9

    #@15
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    #@17
    .line 2734
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v10, 0x5

    #@1
    const/4 v9, 0x2

    #@2
    .line 2743
    const/4 v7, 0x1

    #@3
    invoke-static {p1, v7}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 2744
    iget v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mNumResults:I

    #@8
    add-int/lit8 v7, v7, 0x1

    #@a
    iput v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mNumResults:I

    #@c
    .line 2745
    const/4 v4, 0x0

    #@d
    .line 2746
    .local v4, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    #@f
    .line 2747
    const-string/jumbo v7, "intent"

    #@12
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@15
    move-result-object v4

    #@16
    .end local v4    # "intent":Landroid/content/Intent;
    check-cast v4, Landroid/content/Intent;

    #@18
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    #@1a
    .line 2749
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1d
    move-result v7

    #@1e
    .line 2748
    invoke-virtual {p0, v7, v4}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->checkKeyIntent(ILandroid/content/Intent;)V

    #@21
    .line 2753
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mExpectActivityLaunch:Z

    #@23
    if-eqz v7, :cond_1

    #@25
    if-eqz p1, :cond_1

    #@27
    .line 2754
    const-string/jumbo v7, "intent"

    #@2a
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@2d
    move-result v7

    #@2e
    .line 2753
    if-eqz v7, :cond_1

    #@30
    .line 2755
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@32
    .line 2759
    .local v5, "response":Landroid/accounts/IAccountManagerResponse;
    :goto_0
    if-nez v5, :cond_2

    #@34
    .line 2760
    return-void

    #@35
    .line 2757
    .end local v5    # "response":Landroid/accounts/IAccountManagerResponse;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@38
    move-result-object v5

    #@39
    .restart local v5    # "response":Landroid/accounts/IAccountManagerResponse;
    goto :goto_0

    #@3a
    .line 2762
    :cond_2
    if-nez p1, :cond_4

    #@3c
    .line 2763
    const-string/jumbo v7, "AccountManagerService"

    #@3f
    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_3

    #@45
    .line 2764
    const-string/jumbo v7, "AccountManagerService"

    #@48
    new-instance v8, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->getClass()Ljava/lang/Class;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@54
    move-result-object v9

    #@55
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v8

    #@59
    const-string/jumbo v9, " calling onError() on response "

    #@5c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v8

    #@68
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 2767
    :cond_3
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@6d
    .line 2768
    const-string/jumbo v8, "null bundle returned"

    #@70
    .line 2767
    invoke-static {v7, v5, v10, v8}, Lcom/android/server/accounts/AccountManagerService;->-wrap14(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@73
    .line 2769
    return-void

    #@74
    .line 2772
    :cond_4
    const-string/jumbo v7, "errorCode"

    #@77
    const/4 v8, -0x1

    #@78
    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@7b
    move-result v7

    #@7c
    if-lez v7, :cond_5

    #@7e
    if-nez v4, :cond_5

    #@80
    .line 2775
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@82
    const-string/jumbo v8, "errorCode"

    #@85
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@88
    move-result v8

    #@89
    .line 2776
    const-string/jumbo v9, "errorMessage"

    #@8c
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8f
    move-result-object v9

    #@90
    .line 2775
    invoke-static {v7, v5, v8, v9}, Lcom/android/server/accounts/AccountManagerService;->-wrap14(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@93
    .line 2777
    return-void

    #@94
    .line 2781
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    #@96
    if-nez v7, :cond_6

    #@98
    .line 2782
    const-string/jumbo v7, "password"

    #@9b
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@9e
    .line 2786
    :cond_6
    const-string/jumbo v7, "authtoken"

    #@a1
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@a4
    .line 2788
    const-string/jumbo v7, "AccountManagerService"

    #@a7
    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@aa
    move-result v7

    #@ab
    if-eqz v7, :cond_7

    #@ad
    .line 2789
    const-string/jumbo v7, "AccountManagerService"

    #@b0
    .line 2790
    new-instance v8, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->getClass()Ljava/lang/Class;

    #@b8
    move-result-object v9

    #@b9
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@bc
    move-result-object v9

    #@bd
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v8

    #@c1
    const-string/jumbo v9, " calling onResult() on response "

    #@c4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v8

    #@c8
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v8

    #@cc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v8

    #@d0
    .line 2789
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    .line 2797
    :cond_7
    const-string/jumbo v7, "accountSessionBundle"

    #@d6
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@d9
    move-result-object v6

    #@da
    .line 2798
    .local v6, "sessionBundle":Landroid/os/Bundle;
    if-eqz v6, :cond_8

    #@dc
    .line 2799
    const-string/jumbo v7, "accountType"

    #@df
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e2
    move-result-object v0

    #@e3
    .line 2800
    .local v0, "accountType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e6
    move-result v7

    #@e7
    if-nez v7, :cond_9

    #@e9
    .line 2801
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mAccountType:Ljava/lang/String;

    #@eb
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ee
    move-result v7

    #@ef
    if-eqz v7, :cond_9

    #@f1
    .line 2806
    :goto_1
    const-string/jumbo v7, "accountType"

    #@f4
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mAccountType:Ljava/lang/String;

    #@f6
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f9
    .line 2810
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    #@fc
    move-result-object v1

    #@fd
    .line 2811
    .local v1, "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    invoke-virtual {v1, v6}, Lcom/android/server/accounts/CryptoHelper;->encryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@100
    move-result-object v3

    #@101
    .line 2812
    .local v3, "encryptedBundle":Landroid/os/Bundle;
    const-string/jumbo v7, "accountSessionBundle"

    #@104
    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@107
    .line 2823
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    .end local v3    # "encryptedBundle":Landroid/os/Bundle;
    :cond_8
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@109
    invoke-static {v7, v5, p1}, Lcom/android/server/accounts/AccountManagerService;->-wrap15(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    #@10c
    .line 2742
    return-void

    #@10d
    .line 2802
    .restart local v0    # "accountType":Ljava/lang/String;
    :cond_9
    const-string/jumbo v7, "AccountManagerService"

    #@110
    const-string/jumbo v8, "Account type in session bundle doesn\'t match request."

    #@113
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@116
    goto :goto_1

    #@117
    .line 2813
    :catch_0
    move-exception v2

    #@118
    .line 2814
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v7, "AccountManagerService"

    #@11b
    const/4 v8, 0x3

    #@11c
    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@11f
    move-result v7

    #@120
    if-eqz v7, :cond_a

    #@122
    .line 2815
    const-string/jumbo v7, "AccountManagerService"

    #@125
    const-string/jumbo v8, "Failed to encrypt session bundle!"

    #@128
    invoke-static {v7, v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12b
    .line 2817
    :cond_a
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@12d
    .line 2818
    const-string/jumbo v8, "failed to encrypt session bundle"

    #@130
    .line 2817
    invoke-static {v7, v5, v10, v8}, Lcom/android/server/accounts/AccountManagerService;->-wrap14(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@133
    .line 2819
    return-void
.end method
