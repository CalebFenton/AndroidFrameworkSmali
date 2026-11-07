.class Landroid/service/credentials/CredentialProviderService$1$2;
.super Ljava/lang/Object;
.source "CredentialProviderService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/credentials/CredentialProviderService$1;->onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/IBeginCreateCredentialCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/service/credentials/BeginCreateCredentialResponse;",
        "Landroid/credentials/CreateCredentialException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/service/credentials/IBeginCreateCredentialCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/credentials/CredentialProviderService$1;Landroid/service/credentials/IBeginCreateCredentialCallback;)V
    .registers 3
    .param p1, "this$1"    # Landroid/service/credentials/CredentialProviderService$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 302
    iput-object p2, p0, Landroid/service/credentials/CredentialProviderService$1$2;->val$callback:Landroid/service/credentials/IBeginCreateCredentialCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/credentials/CreateCredentialException;)V
    .registers 5
    .param p1, "e"    # Landroid/credentials/CreateCredentialException;

    .line 314
    :try_start_0
    iget-object v0, p0, Landroid/service/credentials/CredentialProviderService$1$2;->val$callback:Landroid/service/credentials/IBeginCreateCredentialCallback;

    invoke-virtual {p1}, Landroid/credentials/CreateCredentialException;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/credentials/CreateCredentialException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/service/credentials/IBeginCreateCredentialCallback;->onFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 317
    goto :goto_12

    .line 315
    :catch_e
    move-exception v0

    .line 316
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 318
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 302
    check-cast p1, Landroid/credentials/CreateCredentialException;

    invoke-virtual {p0, p1}, Landroid/service/credentials/CredentialProviderService$1$2;->onError(Landroid/credentials/CreateCredentialException;)V

    return-void
.end method

.method public blacklist onResult(Landroid/service/credentials/BeginCreateCredentialResponse;)V
    .registers 3
    .param p1, "result"    # Landroid/service/credentials/BeginCreateCredentialResponse;

    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/service/credentials/CredentialProviderService$1$2;->val$callback:Landroid/service/credentials/IBeginCreateCredentialCallback;

    invoke-interface {v0, p1}, Landroid/service/credentials/IBeginCreateCredentialCallback;->onSuccess(Landroid/service/credentials/BeginCreateCredentialResponse;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 309
    goto :goto_a

    .line 307
    :catch_6
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 302
    check-cast p1, Landroid/service/credentials/BeginCreateCredentialResponse;

    invoke-virtual {p0, p1}, Landroid/service/credentials/CredentialProviderService$1$2;->onResult(Landroid/service/credentials/BeginCreateCredentialResponse;)V

    return-void
.end method
