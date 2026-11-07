.class Landroid/accounts/AccountManager$4;
.super Landroid/accounts/AccountManager$Future2Task;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->hasFeaturesAsUser(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;I)Landroid/accounts/AccountManagerFuture;
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

.field final synthetic blacklist val$features:[Ljava/lang/String;

.field final synthetic blacklist val$userId:I


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;[Ljava/lang/String;I)V
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

    .line 913
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$4;->this$0:Landroid/accounts/AccountManager;

    iput-object p4, p0, Landroid/accounts/AccountManager$4;->val$account:Landroid/accounts/Account;

    iput-object p5, p0, Landroid/accounts/AccountManager$4;->val$features:[Ljava/lang/String;

    iput p6, p0, Landroid/accounts/AccountManager$4;->val$userId:I

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

    .line 921
    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 924
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 922
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

    .line 913
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$4;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist doWork()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    iget-object v0, p0, Landroid/accounts/AccountManager$4;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$4;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v3, p0, Landroid/accounts/AccountManager$4;->val$account:Landroid/accounts/Account;

    iget-object v4, p0, Landroid/accounts/AccountManager$4;->val$features:[Ljava/lang/String;

    iget v5, p0, Landroid/accounts/AccountManager$4;->val$userId:I

    iget-object v0, p0, Landroid/accounts/AccountManager$4;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$fgetmContext(Landroid/accounts/AccountManager;)Landroid/content/Context;

    move-result-object v0

    .line 917
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 916
    invoke-interface/range {v1 .. v6}, Landroid/accounts/IAccountManager;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;ILjava/lang/String;)V

    .line 918
    return-void
.end method
