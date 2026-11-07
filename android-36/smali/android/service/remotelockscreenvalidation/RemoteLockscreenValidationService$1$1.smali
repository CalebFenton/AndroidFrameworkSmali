.class Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;->validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/app/RemoteLockscreenValidationResult;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
    .registers 3
    .param p1, "this$1"    # Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;
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

    .line 63
    iput-object p2, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 75
    :try_start_0
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;->onFailure(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 78
    goto :goto_e

    .line 76
    :catch_a
    move-exception v0

    .line 77
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 79
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
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

    .line 63
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public blacklist onResult(Landroid/app/RemoteLockscreenValidationResult;)V
    .registers 3
    .param p1, "result"    # Landroid/app/RemoteLockscreenValidationResult;

    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    invoke-interface {v0, p1}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;->onSuccess(Landroid/app/RemoteLockscreenValidationResult;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 70
    goto :goto_a

    .line 68
    :catch_6
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 71
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

    .line 63
    check-cast p1, Landroid/app/RemoteLockscreenValidationResult;

    invoke-virtual {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1$1;->onResult(Landroid/app/RemoteLockscreenValidationResult;)V

    return-void
.end method
