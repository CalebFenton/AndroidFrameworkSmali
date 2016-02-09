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
    .line 2176
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
    .line 2180
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
    .line 2192
    .local v9, "accounts":[Landroid/accounts/Account;
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@a
    array-length v2, v9

    #@b
    invoke-static {v1, v2}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-set0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)I

    #@e
    .line 2194
    array-length v1, v9

    #@f
    if-nez v1, :cond_1

    #@11
    .line 2195
    move-object/from16 v0, p0

    #@13
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@15
    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 2198
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
    .line 2199
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
    iget-object v6, v6, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

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
    iget-object v8, v8, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    #@4f
    .line 2198
    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@52
    move-result-object v1

    #@53
    move-object/from16 v0, v18

    #@55
    iput-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    #@57
    .line 2177
    :goto_0
    return-void

    #@58
    .line 2187
    .end local v9    # "accounts":[Landroid/accounts/Account;
    :catch_0
    move-exception v12

    #@59
    .line 2188
    .local v12, "e":Landroid/accounts/AuthenticatorException;
    move-object/from16 v0, p0

    #@5b
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@5d
    invoke-static {v1, v12}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    #@60
    .line 2189
    return-void

    #@61
    .line 2184
    .end local v12    # "e":Landroid/accounts/AuthenticatorException;
    :catch_1
    move-exception v15

    #@62
    .line 2185
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    #@64
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@66
    invoke-static {v1, v15}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    #@69
    .line 2186
    return-void

    #@6a
    .line 2181
    .end local v15    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v13

    #@6b
    .line 2182
    .local v13, "e":Landroid/accounts/OperationCanceledException;
    move-object/from16 v0, p0

    #@6d
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@6f
    invoke-static {v1, v13}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    #@72
    .line 2183
    return-void

    #@73
    .line 2202
    .end local v13    # "e":Landroid/accounts/OperationCanceledException;
    .restart local v9    # "accounts":[Landroid/accounts/Account;
    :cond_0
    new-instance v17, Landroid/os/Bundle;

    #@75
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@78
    .line 2203
    .local v17, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "authAccount"

    #@7b
    const/4 v2, 0x0

    #@7c
    move-object/from16 v0, v17

    #@7e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@81
    .line 2204
    const-string/jumbo v1, "accountType"

    #@84
    const/4 v2, 0x0

    #@85
    move-object/from16 v0, v17

    #@87
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@8a
    .line 2205
    const-string/jumbo v1, "authtoken"

    #@8d
    const/4 v2, 0x0

    #@8e
    move-object/from16 v0, v17

    #@90
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@93
    .line 2207
    :try_start_1
    move-object/from16 v0, p0

    #@95
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@97
    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@99
    move-object/from16 v0, v17

    #@9b
    invoke-interface {v1, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    #@9e
    goto :goto_0

    #@9f
    .line 2208
    :catch_3
    move-exception v14

    #@a0
    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@a1
    .line 2213
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v17    # "result":Landroid/os/Bundle;
    :cond_1
    array-length v1, v9

    #@a2
    const/4 v2, 0x1

    #@a3
    if-ne v1, v2, :cond_3

    #@a5
    .line 2215
    move-object/from16 v0, p0

    #@a7
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@a9
    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    #@ab
    if-nez v1, :cond_2

    #@ad
    .line 2216
    move-object/from16 v0, p0

    #@af
    iget-object v7, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@b1
    move-object/from16 v0, p0

    #@b3
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@b5
    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    #@b7
    const/4 v2, 0x0

    #@b8
    aget-object v2, v9, v2

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@be
    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    #@c0
    .line 2217
    move-object/from16 v0, p0

    #@c2
    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@c4
    iget-object v5, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@ca
    iget-object v6, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    #@cc
    const/4 v4, 0x0

    #@cd
    .line 2216
    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@d0
    move-result-object v1

    #@d1
    iput-object v1, v7, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    #@d3
    goto :goto_0

    #@d4
    .line 2219
    :cond_2
    move-object/from16 v0, p0

    #@d6
    iget-object v8, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@d8
    move-object/from16 v0, p0

    #@da
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@dc
    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    #@de
    const/4 v2, 0x0

    #@df
    aget-object v2, v9, v2

    #@e1
    .line 2220
    move-object/from16 v0, p0

    #@e3
    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@e5
    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    #@e7
    move-object/from16 v0, p0

    #@e9
    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@eb
    iget-object v4, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    #@ed
    .line 2221
    move-object/from16 v0, p0

    #@ef
    iget-object v5, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@f1
    iget-object v5, v5, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    #@f3
    move-object/from16 v0, p0

    #@f5
    iget-object v6, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@f7
    iget-object v6, v6, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    #@f9
    move-object/from16 v0, p0

    #@fb
    iget-object v7, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@fd
    iget-object v7, v7, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    #@ff
    .line 2219
    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@102
    move-result-object v1

    #@103
    iput-object v1, v8, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    #@105
    goto/16 :goto_0

    #@107
    .line 2224
    :cond_3
    move-object/from16 v0, p0

    #@109
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@10b
    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    #@10d
    if-eqz v1, :cond_4

    #@10f
    .line 2226
    new-instance v10, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1$1;

    #@111
    move-object/from16 v0, p0

    #@113
    invoke-direct {v10, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1$1;-><init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;)V

    #@116
    .line 2241
    .local v10, "chooseResponse":Landroid/accounts/IAccountManagerResponse;
    new-instance v16, Landroid/content/Intent;

    #@118
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    #@11b
    .line 2243
    .local v16, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@11e
    move-result-object v1

    #@11f
    .line 2244
    const v2, 0x1040042

    #@122
    .line 2243
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@125
    move-result-object v1

    #@126
    .line 2242
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@129
    move-result-object v11

    #@12a
    .line 2245
    .local v11, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@12d
    move-result-object v1

    #@12e
    .line 2246
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@131
    move-result-object v2

    #@132
    .line 2245
    move-object/from16 v0, v16

    #@134
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@137
    .line 2247
    const-string/jumbo v1, "accounts"

    #@13a
    move-object/from16 v0, v16

    #@13c
    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    #@13f
    .line 2248
    const-string/jumbo v1, "accountManagerResponse"

    #@142
    .line 2249
    new-instance v2, Landroid/accounts/AccountManagerResponse;

    #@144
    invoke-direct {v2, v10}, Landroid/accounts/AccountManagerResponse;-><init>(Landroid/accounts/IAccountManagerResponse;)V

    #@147
    .line 2248
    move-object/from16 v0, v16

    #@149
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@14c
    .line 2250
    move-object/from16 v0, p0

    #@14e
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@150
    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    #@152
    move-object/from16 v0, v16

    #@154
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@157
    goto/16 :goto_0

    #@159
    .line 2254
    .end local v10    # "chooseResponse":Landroid/accounts/IAccountManagerResponse;
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v17, Landroid/os/Bundle;

    #@15b
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@15e
    .line 2255
    .restart local v17    # "result":Landroid/os/Bundle;
    const-string/jumbo v1, "accounts"

    #@161
    const/4 v2, 0x0

    #@162
    move-object/from16 v0, v17

    #@164
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@167
    .line 2257
    :try_start_2
    move-object/from16 v0, p0

    #@169
    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@16b
    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@16d
    move-object/from16 v0, v17

    #@16f
    invoke-interface {v1, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    #@172
    goto/16 :goto_0

    #@174
    .line 2258
    :catch_4
    move-exception v14

    #@175
    .restart local v14    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method
