.class Landroid/accounts/AccountManager$13;
.super Landroid/accounts/AccountManager$Future2Task;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->copyAccountToUser(Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$Future2Task<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;

.field final synthetic blacklist val$account:Landroid/accounts/Account;

.field final synthetic blacklist val$fromUser:Landroid/os/UserHandle;

.field final synthetic blacklist val$toUser:Landroid/os/UserHandle;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2042
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$13;->this$0:Landroid/accounts/AccountManager;

    iput-object p4, p0, Landroid/accounts/AccountManager$13;->val$account:Landroid/accounts/Account;

    iput-object p5, p0, Landroid/accounts/AccountManager$13;->val$fromUser:Landroid/os/UserHandle;

    iput-object p6, p0, Landroid/accounts/AccountManager$13;->val$toUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager$Future2Task;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist bundleToResult(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2050
    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2053
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2051
    :cond_11
    new-instance v0, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v1, "no result in response"

    invoke-direct {v0, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

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

    .line 2042
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$13;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist doWork()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2045
    iget-object v0, p0, Landroid/accounts/AccountManager$13;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManager$13;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Landroid/accounts/AccountManager$13;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Landroid/accounts/AccountManager$13;->val$fromUser:Landroid/os/UserHandle;

    .line 2046
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, p0, Landroid/accounts/AccountManager$13;->val$toUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2045
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 2047
    return-void
.end method
