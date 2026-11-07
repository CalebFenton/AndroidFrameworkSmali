.class Landroid/accounts/AccountManager$2;
.super Landroid/app/PropertyInvalidatedCache;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/accounts/AccountManager$AccountKeyData;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/AccountManager;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "maxEntries"    # I
    .param p3, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 430
    iput-object p1, p0, Landroid/accounts/AccountManager$2;->this$0:Landroid/accounts/AccountManager;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 430
    check-cast p1, Landroid/accounts/AccountManager$AccountKeyData;

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$2;->recompute(Landroid/accounts/AccountManager$AccountKeyData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist recompute(Landroid/accounts/AccountManager$AccountKeyData;)Ljava/lang/String;
    .registers 6
    .param p1, "accountKeyData"    # Landroid/accounts/AccountManager$AccountKeyData;

    .line 433
    iget-object v0, p1, Landroid/accounts/AccountManager$AccountKeyData;->account:Landroid/accounts/Account;

    .line 434
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p1, Landroid/accounts/AccountManager$AccountKeyData;->key:Ljava/lang/String;

    .line 436
    .local v1, "key":Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 437
    if-eqz v1, :cond_19

    .line 439
    :try_start_8
    iget-object v2, p0, Landroid/accounts/AccountManager$2;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v2}, Landroid/accounts/AccountManager;->-$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/accounts/IAccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v2

    .line 440
    :catch_13
    move-exception v2

    .line 441
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 437
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "key is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
