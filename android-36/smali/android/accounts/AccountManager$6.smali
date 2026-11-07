.class Landroid/accounts/AccountManager$6;
.super Landroid/accounts/AccountManager$Future2Task;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->renameAccount(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$Future2Task<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;

.field final synthetic blacklist val$account:Landroid/accounts/Account;

.field final synthetic blacklist val$newName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;)V
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

    .line 1242
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/accounts/Account;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$6;->this$0:Landroid/accounts/AccountManager;

    iput-object p4, p0, Landroid/accounts/AccountManager$6;->val$account:Landroid/accounts/Account;

    iput-object p5, p0, Landroid/accounts/AccountManager$6;->val$newName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager$Future2Task;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist bundleToResult(Landroid/os/Bundle;)Landroid/accounts/Account;
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 1249
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, "name":Ljava/lang/String;
    const-string v1, "accountType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1251
    .local v1, "type":Ljava/lang/String;
    const-string v2, "accountAccessId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1252
    .local v2, "accessId":Ljava/lang/String;
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
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

    .line 1242
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$6;->bundleToResult(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public blacklist doWork()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Landroid/accounts/AccountManager$6;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManager$6;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Landroid/accounts/AccountManager$6;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Landroid/accounts/AccountManager$6;->val$newName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/IAccountManager;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1246
    return-void
.end method
