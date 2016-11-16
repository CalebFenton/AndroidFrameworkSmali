.class Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;)V
    .locals 0
    .param p1, "this$1"    # Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@0
    .prologue
    .line 2250
    iput-object p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2255
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    #@3
    move-result-object v9

    #@4
    check-cast v9, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 2267
    .local v9, "accounts":[Landroid/accounts/Account;
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@a
    array-length v2, v9

    #@b
    invoke-static {v1, v2}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-set0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)I

    #@e
    .line 2269
    array-length v1, v9

    #@f
    if-nez v1, :cond_1

    #@11
    .line 2270
    move-object/from16 v0, p0

    #@13
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@15
    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 2273
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@1d
    move-object/from16 v18, v0

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@23
    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    #@25
    move-object/from16 v0, p0

    #@27
    iget-object v2, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@29
    iget-object v2, v2, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@2f
    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@35
    iget-object v4, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    #@37
    .line 2274
    move-object/from16 v0, p0

    #@39
    iget-object v5, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@3b
    iget-object v5, v5, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAddAccountOptions:Landroid/os/Bundle;

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v6, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@41
    iget-object v6, v6, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v7, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@47
    iget-object v7, v7, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v8, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@4d
    iget-object v8, v8, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    #@4f
    .line 2273
    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@52
    move-result-object v1

    #@53
    move-object/from16 v0, v18

    #@55
    iput-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    #@57
    .line 2252
    :goto_0
    return-void

    #@58
    .line 2262
    .end local v9    # "accounts":[Landroid/accounts/Account;
    :catch_0
    move-exception v12

    #@59
    .line 2263
    .local v12, "e":Landroid/accounts/AuthenticatorException;
    move-object/from16 v0, p0

    #@5b
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@5d
    invoke-static {v1, v12}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    #@60
    .line 2264
    return-void

    #@61
    .line 2259
    .end local v12    # "e":Landroid/accounts/AuthenticatorException;
    :catch_1
    move-exception v15

    #@62
    .line 2260
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    #@64
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@66
    invoke-static {v1, v15}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    #@69
    .line 2261
    return-void

    #@6a
    .line 2256
    .end local v15    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v13

    #@6b
    .line 2257
    .local v13, "e":Landroid/accounts/OperationCanceledException;
    move-object/from16 v0, p0

    #@6d
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@6f
    invoke-static {v1, v13}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    #@72
    .line 2258
    return-void

    #@73
    .line 2277
    .end local v13    # "e":Landroid/accounts/OperationCanceledException;
    .restart local v9    # "accounts":[Landroid/accounts/Account;
    :cond_0
    new-instance v17, Landroid/os/Bundle;

    #@75
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@78
    .line 2278
    .local v17, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "authAccount"

    #@7b
    const/4 v2, 0x0

    #@7c
    move-object/from16 v0, v17

    #@7e
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@81
    .line 2279
    const-string/jumbo v1, "accountType"

    #@84
    const/4 v2, 0x0

    #@85
    move-object/from16 v0, v17

    #@87
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@8a
    .line 2280
    const-string/jumbo v1, "authtoken"

    #@8d
    const/4 v2, 0x0

    #@8e
    move-object/from16 v0, v17

    #@90
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@93
    .line 2281
    const-string/jumbo v1, "accountAccessId"

    #@96
    const/4 v2, 0x0

    #@97
    move-object/from16 v0, v17

    #@99
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    #@9c
    .line 2283
    :try_start_1
    move-object/from16 v0, p0

    #@9e
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@a0
    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@a2
    move-object/from16 v0, v17

    #@a4
    invoke-interface {v1, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    #@a7
    goto :goto_0

    #@a8
    .line 2284
    :catch_3
    move-exception v14

    #@a9
    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@aa
    .line 2289
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v17    # "result":Landroid/os/Bundle;
    :cond_1
    array-length v1, v9

    #@ab
    const/4 v2, 0x1

    #@ac
    if-ne v1, v2, :cond_3

    #@ae
    .line 2291
    move-object/from16 v0, p0

    #@b0
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@b2
    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    #@b4
    if-nez v1, :cond_2

    #@b6
    .line 2292
    move-object/from16 v0, p0

    #@b8
    iget-object v7, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@be
    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    #@c0
    const/4 v2, 0x0

    #@c1
    aget-object v2, v9, v2

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@c7
    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    #@c9
    .line 2293
    move-object/from16 v0, p0

    #@cb
    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@cd
    iget-object v5, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@d3
    iget-object v6, v4, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    #@d5
    const/4 v4, 0x0

    #@d6
    .line 2292
    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@d9
    move-result-object v1

    #@da
    iput-object v1, v7, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    #@dc
    goto/16 :goto_0

    #@de
    .line 2295
    :cond_2
    move-object/from16 v0, p0

    #@e0
    iget-object v8, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@e6
    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    #@e8
    const/4 v2, 0x0

    #@e9
    aget-object v2, v9, v2

    #@eb
    .line 2296
    move-object/from16 v0, p0

    #@ed
    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@ef
    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@f5
    iget-object v4, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    #@f7
    .line 2297
    move-object/from16 v0, p0

    #@f9
    iget-object v5, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@fb
    iget-object v5, v5, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    #@fd
    move-object/from16 v0, p0

    #@ff
    iget-object v6, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@101
    iget-object v6, v6, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    #@103
    move-object/from16 v0, p0

    #@105
    iget-object v7, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@107
    iget-object v7, v7, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    #@109
    .line 2295
    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@10c
    move-result-object v1

    #@10d
    iput-object v1, v8, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    #@10f
    goto/16 :goto_0

    #@111
    .line 2300
    :cond_3
    move-object/from16 v0, p0

    #@113
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@115
    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    #@117
    if-eqz v1, :cond_4

    #@119
    .line 2302
    new-instance v10, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1$1;

    #@11b
    move-object/from16 v0, p0

    #@11d
    invoke-direct {v10, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1$1;-><init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;)V

    #@120
    .line 2321
    .local v10, "chooseResponse":Landroid/accounts/IAccountManagerResponse;
    new-instance v16, Landroid/content/Intent;

    #@122
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    #@125
    .line 2323
    .local v16, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@128
    move-result-object v1

    #@129
    .line 2324
    const v2, 0x104005d

    #@12c
    .line 2323
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@12f
    move-result-object v1

    #@130
    .line 2322
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@133
    move-result-object v11

    #@134
    .line 2325
    .local v11, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@137
    move-result-object v1

    #@138
    .line 2326
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@13b
    move-result-object v2

    #@13c
    .line 2325
    move-object/from16 v0, v16

    #@13e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@141
    .line 2327
    const-string/jumbo v1, "accounts"

    #@144
    move-object/from16 v0, v16

    #@146
    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    #@149
    .line 2328
    const-string/jumbo v1, "accountManagerResponse"

    #@14c
    .line 2329
    new-instance v2, Landroid/accounts/AccountManagerResponse;

    #@14e
    invoke-direct {v2, v10}, Landroid/accounts/AccountManagerResponse;-><init>(Landroid/accounts/IAccountManagerResponse;)V

    #@151
    .line 2328
    move-object/from16 v0, v16

    #@153
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@156
    .line 2330
    move-object/from16 v0, p0

    #@158
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@15a
    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    #@15c
    move-object/from16 v0, v16

    #@15e
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@161
    goto/16 :goto_0

    #@163
    .line 2334
    .end local v10    # "chooseResponse":Landroid/accounts/IAccountManagerResponse;
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v17, Landroid/os/Bundle;

    #@165
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@168
    .line 2335
    .restart local v17    # "result":Landroid/os/Bundle;
    const-string/jumbo v1, "accounts"

    #@16b
    const/4 v2, 0x0

    #@16c
    move-object/from16 v0, v17

    #@16e
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@171
    .line 2337
    :try_start_2
    move-object/from16 v0, p0

    #@173
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@175
    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@177
    move-object/from16 v0, v17

    #@179
    invoke-interface {v1, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    #@17c
    goto/16 :goto_0

    #@17e
    .line 2338
    :catch_4
    move-exception v14

    #@17f
    .restart local v14    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method
