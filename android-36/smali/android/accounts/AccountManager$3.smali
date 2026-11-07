.class Landroid/accounts/AccountManager$3;
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
        "Landroid/accounts/AccountManager$Future2Task<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;

.field final synthetic blacklist val$accountType:Ljava/lang/String;

.field final synthetic blacklist val$authTokenType:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 861
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$3;->this$0:Landroid/accounts/AccountManager;

    iput-object p4, p0, Landroid/accounts/AccountManager$3;->val$accountType:Ljava/lang/String;

    iput-object p5, p0, Landroid/accounts/AccountManager$3;->val$authTokenType:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager$Future2Task;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 861
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$3;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist bundleToResult(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 869
    const-string v0, "authTokenLabelKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 872
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 870
    :cond_d
    new-instance v0, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v1, "no result in response"

    invoke-direct {v0, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist doWork()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Landroid/accounts/AccountManager$3;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManager$3;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Landroid/accounts/AccountManager$3;->val$accountType:Ljava/lang/String;

    iget-object v3, p0, Landroid/accounts/AccountManager$3;->val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/IAccountManager;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    return-void
.end method
