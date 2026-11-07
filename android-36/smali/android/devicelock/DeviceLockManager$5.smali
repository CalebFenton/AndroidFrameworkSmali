.class Landroid/devicelock/DeviceLockManager$5;
.super Landroid/devicelock/IGetDeviceIdCallback$Stub;
.source "DeviceLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/devicelock/DeviceLockManager;->getDeviceId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/devicelock/DeviceLockManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/devicelock/DeviceLockManager;
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

    .line 257
    iput-object p2, p0, Landroid/devicelock/DeviceLockManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/devicelock/DeviceLockManager$5;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/devicelock/IGetDeviceIdCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDeviceIdReceived$0(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 262
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot get device id (empty)"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 263
    return-void
.end method

.method static synthetic blacklist lambda$onDeviceIdReceived$1(Landroid/os/OutcomeReceiver;ILjava/lang/String;)V
    .registers 4
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 266
    new-instance v0, Landroid/devicelock/DeviceId;

    invoke-direct {v0, p1, p2}, Landroid/devicelock/DeviceId;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 267
    return-void
.end method


# virtual methods
.method public blacklist onDeviceIdReceived(ILjava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 260
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 261
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/devicelock/DeviceLockManager$5;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/devicelock/DeviceLockManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/devicelock/DeviceLockManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 265
    :cond_13
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/devicelock/DeviceLockManager$5;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/devicelock/DeviceLockManager$5$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1, p2}, Landroid/devicelock/DeviceLockManager$5$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 269
    :goto_1f
    return-void
.end method

.method public blacklist onError(Landroid/devicelock/ParcelableException;)V
    .registers 4
    .param p1, "parcelableException"    # Landroid/devicelock/ParcelableException;

    .line 273
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager$5;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-virtual {p1}, Landroid/devicelock/ParcelableException;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 274
    return-void
.end method
