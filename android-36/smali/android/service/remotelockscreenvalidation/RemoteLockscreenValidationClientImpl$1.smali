.class Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;
.super Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;
.source "RemoteLockscreenValidationClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

.field final synthetic blacklist val$guess:[B


# direct methods
.method constructor blacklist <init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;[BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 92
    iput-object p2, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;->val$guess:[B

    iput-object p3, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist exec(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    .registers 4
    .param p1, "service"    # Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;->val$guess:[B

    iget-object v1, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    invoke-interface {p1, v0, v1}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;->validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V

    .line 96
    return-void
.end method

.method blacklist onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;->val$callback:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;

    invoke-interface {v0, p1}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;->onFailure(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 104
    goto :goto_10

    .line 102
    :catch_6
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error while failing validateLockscreenGuess"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method
