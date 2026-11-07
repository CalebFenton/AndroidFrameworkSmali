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
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;)V
    .registers 2
    .param p1, "this$1"    # Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2683
    iput-object p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist run(Landroid/accounts/AccountManagerFuture;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2686
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v0, "accountType"

    const-string v1, "authAccount"

    const/4 v2, 0x0

    .line 2687
    .local v2, "accountName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2689
    .local v3, "accountType":Ljava/lang/String;
    :try_start_6
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 2690
    .local v4, "result":Landroid/os/Bundle;
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 2691
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_15
    .catch Landroid/accounts/OperationCanceledException; {:try_start_6 .. :try_end_15} :catch_c2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_15} :catch_bb
    .catch Landroid/accounts/AuthenticatorException; {:try_start_6 .. :try_end_15} :catch_b4

    .line 2701
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "result":Landroid/os/Bundle;
    .local v5, "accountType":Ljava/lang/String;
    nop

    .line 2703
    if-nez v2, :cond_67

    .line 2704
    iget-object v3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_47

    .line 2707
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v7, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v9, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v10, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAddAccountOptions:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v11, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v12, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v13, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v6 .. v13}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    iput-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto :goto_b3

    .line 2711
    :cond_47
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2712
    .local v3, "result":Landroid/os/Bundle;
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2713
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    const-string v0, "authtoken"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    const-string v0, "accountAccessId"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2717
    :try_start_5d
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v0, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0, v3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_64} :catch_65

    .line 2720
    goto :goto_66

    .line 2718
    :catch_65
    move-exception v0

    .line 2722
    .end local v3    # "result":Landroid/os/Bundle;
    :goto_66
    goto :goto_b3

    .line 2724
    :cond_67
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-$$Nest$fputmNumAccounts(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)V

    .line 2725
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v2, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    .line 2727
    .local v7, "account":Landroid/accounts/Account;
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v0, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_93

    .line 2728
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v10, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v11, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    iput-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto :goto_b3

    .line 2731
    :cond_93
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v9, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v10, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v11, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v12, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v6 .. v12}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    iput-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    .line 2735
    .end local v7    # "account":Landroid/accounts/Account;
    :goto_b3
    return-void

    .line 2698
    .end local v5    # "accountType":Ljava/lang/String;
    .local v3, "accountType":Ljava/lang/String;
    :catch_b4
    move-exception v0

    .line 2699
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    # invokes: Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$500(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    .line 2700
    return-void

    .line 2695
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catch_bb
    move-exception v0

    .line 2696
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    # invokes: Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$400(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    .line 2697
    return-void

    .line 2692
    .end local v0    # "e":Ljava/io/IOException;
    :catch_c2
    move-exception v0

    .line 2693
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    # invokes: Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$300(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    .line 2694
    return-void
.end method
