.class Landroid/accounts/AccountManager$2;
.super Landroid/accounts/AccountManager$Future2Task;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->getAuthTokenLabel(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$Future2Task",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$authTokenType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "this$0_1"    # Landroid/accounts/AccountManager;
    .param p3, "$anonymous0"    # Landroid/os/Handler;
    .param p5, "val$accountType"    # Ljava/lang/String;
    .param p6, "val$authTokenType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 566
    .local p4, "$anonymous1":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    iput-object p2, p0, Landroid/accounts/AccountManager$2;->this$0:Landroid/accounts/AccountManager;

    #@2
    iput-object p5, p0, Landroid/accounts/AccountManager$2;->val$accountType:Ljava/lang/String;

    #@4
    iput-object p6, p0, Landroid/accounts/AccountManager$2;->val$authTokenType:Ljava/lang/String;

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
    .line 572
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$2;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bundleToResult(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 573
    const-string/jumbo v0, "authTokenLabelKey"

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 574
    new-instance v0, Landroid/accounts/AuthenticatorException;

    #@b
    const-string/jumbo v1, "no result in response"

    #@e
    invoke-direct {v0, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 576
    :cond_0
    const-string/jumbo v0, "authTokenLabelKey"

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
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
    .line 568
    iget-object v0, p0, Landroid/accounts/AccountManager$2;->this$0:Landroid/accounts/AccountManager;

    #@2
    invoke-static {v0}, Landroid/accounts/AccountManager;->-get2(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/accounts/AccountManager$2;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@8
    iget-object v2, p0, Landroid/accounts/AccountManager$2;->val$accountType:Ljava/lang/String;

    #@a
    iget-object v3, p0, Landroid/accounts/AccountManager$2;->val$authTokenType:Ljava/lang/String;

    #@c
    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/IAccountManager;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 567
    return-void
.end method
