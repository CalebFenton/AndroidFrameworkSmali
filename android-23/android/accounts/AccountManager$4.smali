.class Landroid/accounts/AccountManager$4;
.super Landroid/accounts/AccountManager$Future2Task;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$Future2Task",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$features:[Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "this$0_1"    # Landroid/accounts/AccountManager;
    .param p3, "$anonymous0"    # Landroid/os/Handler;
    .param p5, "val$type"    # Ljava/lang/String;
    .param p6, "val$features"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 663
    .local p4, "$anonymous1":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    iput-object p2, p0, Landroid/accounts/AccountManager$4;->this$0:Landroid/accounts/AccountManager;

    #@2
    iput-object p5, p0, Landroid/accounts/AccountManager$4;->val$type:Ljava/lang/String;

    #@4
    iput-object p6, p0, Landroid/accounts/AccountManager$4;->val$features:[Ljava/lang/String;

    #@6
    invoke-direct {p0, p1, p3, p4}, Landroid/accounts/AccountManager$Future2Task;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    #@9
    return-void
.end method


# virtual methods
.method public bridge synthetic bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 667
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$4;->bundleToResult(Landroid/os/Bundle;)[Landroid/accounts/Account;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bundleToResult(Landroid/os/Bundle;)[Landroid/accounts/Account;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 668
    const-string/jumbo v3, "accounts"

    #@3
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 669
    new-instance v3, Landroid/accounts/AuthenticatorException;

    #@b
    const-string/jumbo v4, "no result in response"

    #@e
    invoke-direct {v3, v4}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 671
    :cond_0
    const-string/jumbo v3, "accounts"

    #@15
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@18
    move-result-object v2

    #@19
    .line 672
    .local v2, "parcelables":[Landroid/os/Parcelable;
    array-length v3, v2

    #@1a
    new-array v0, v3, [Landroid/accounts/Account;

    #@1c
    .line 673
    .local v0, "descs":[Landroid/accounts/Account;
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@1e
    if-ge v1, v3, :cond_1

    #@20
    .line 674
    aget-object v3, v2, v1

    #@22
    check-cast v3, Landroid/accounts/Account;

    #@24
    aput-object v3, v0, v1

    #@26
    .line 673
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 676
    :cond_1
    return-object v0
.end method

.method public doWork()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 665
    iget-object v0, p0, Landroid/accounts/AccountManager$4;->this$0:Landroid/accounts/AccountManager;

    #@2
    invoke-static {v0}, Landroid/accounts/AccountManager;->-get2(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/accounts/AccountManager$4;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@8
    iget-object v2, p0, Landroid/accounts/AccountManager$4;->val$type:Ljava/lang/String;

    #@a
    iget-object v3, p0, Landroid/accounts/AccountManager$4;->val$features:[Ljava/lang/String;

    #@c
    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/IAccountManager;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V

    #@f
    .line 664
    return-void
.end method
