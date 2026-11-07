.class Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAuthTokenByTypeAndFeaturesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$AmsTask;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o mAccountType:Ljava/lang/String;

.field final greylist-max-o mAddAccountOptions:Landroid/os/Bundle;

.field final greylist-max-p mAuthTokenType:Ljava/lang/String;

.field final greylist-max-o mFeatures:[Ljava/lang/String;

.field volatile greylist-max-o mFuture:Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-p mLoginOptions:Landroid/os/Bundle;

.field final greylist-max-p mMyCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o mNumAccounts:I

.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmNumAccounts(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)V
    .registers 2

    iput p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .registers 11
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "features"    # [Ljava/lang/String;
    .param p5, "activityForPrompting"    # Landroid/app/Activity;
    .param p6, "addAccountOptions"    # Landroid/os/Bundle;
    .param p7, "loginOptions"    # Landroid/os/Bundle;
    .param p9, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x10,
            0x0,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 2658
    .local p8, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    .line 2659
    invoke-direct {p0, p1, p5, p9, p8}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    .line 2668
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    .line 2678
    const/4 p1, 0x0

    iput p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    .line 2660
    if-eqz p2, :cond_1a

    .line 2661
    iput-object p2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    .line 2662
    iput-object p3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    .line 2663
    iput-object p4, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    .line 2664
    iput-object p6, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAddAccountOptions:Landroid/os/Bundle;

    .line 2665
    iput-object p7, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    .line 2666
    iput-object p0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    .line 2667
    return-void

    .line 2660
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "account type is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic blacklist access$300(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "x0"    # Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 2653
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist access$400(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "x0"    # Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 2653
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist access$500(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "x0"    # Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 2653
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o doWork()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2682
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    new-instance v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;

    invoke-direct {v3, p0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;-><init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;)V

    iget-object v4, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->-$$Nest$mgetAccountByTypeAndFeatures(Landroid/accounts/AccountManager;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V

    .line 2736
    return-void
.end method

.method public whitelist run(Landroid/accounts/AccountManagerFuture;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2741
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 2742
    .local v0, "result":Landroid/os/Bundle;
    iget v2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    if-nez v2, :cond_4c

    .line 2743
    const-string v2, "authAccount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2744
    .local v2, "accountName":Ljava/lang/String;
    const-string v3, "accountType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2745
    .local v3, "accountType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_41

    .line 2749
    :cond_24
    const-string v4, "accountAccessId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2750
    .local v4, "accessId":Ljava/lang/String;
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v5

    .line 2751
    .local v7, "account":Landroid/accounts/Account;
    iput v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    .line 2752
    iget-object v6, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v8, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object v10, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    iget-object v11, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v12, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 2754
    return-void

    .line 2746
    .end local v4    # "accessId":Ljava/lang/String;
    .end local v7    # "account":Landroid/accounts/Account;
    :cond_41
    :goto_41
    new-instance v4, Landroid/accounts/AuthenticatorException;

    const-string v5, "account not in result"

    invoke-direct {v4, v5}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    .line 2747
    return-void

    .line 2756
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    :cond_4c
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->set(Landroid/os/Bundle;)V
    :try_end_4f
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_4f} :catch_5a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4f} :catch_55
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_4f} :catch_50

    .end local v0    # "result":Landroid/os/Bundle;
    goto :goto_5e

    .line 2761
    :catch_50
    move-exception v0

    .line 2762
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_5f

    .line 2759
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catch_55
    move-exception v0

    .line 2760
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_5e

    .line 2757
    :catch_5a
    move-exception v0

    .line 2758
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->cancel(Z)Z

    .line 2763
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :goto_5e
    nop

    .line 2764
    :goto_5f
    return-void
.end method
