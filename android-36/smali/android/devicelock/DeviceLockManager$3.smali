.class Landroid/devicelock/DeviceLockManager$3;
.super Landroid/devicelock/IIsDeviceLockedCallback$Stub;
.source "DeviceLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/devicelock/DeviceLockManager;->isDeviceLocked(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 167
    iput-object p2, p0, Landroid/devicelock/DeviceLockManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/devicelock/DeviceLockManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/devicelock/IIsDeviceLockedCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onError$1(Landroid/os/OutcomeReceiver;Landroid/devicelock/ParcelableException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "parcelableException"    # Landroid/devicelock/ParcelableException;

    .line 176
    invoke-virtual {p1}, Landroid/devicelock/ParcelableException;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onIsDeviceLocked$0(Landroid/os/OutcomeReceiver;Z)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "locked"    # Z

    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/devicelock/ParcelableException;)V
    .registers 5
    .param p1, "parcelableException"    # Landroid/devicelock/ParcelableException;

    .line 175
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/devicelock/DeviceLockManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/devicelock/DeviceLockManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/devicelock/DeviceLockManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/devicelock/ParcelableException;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public blacklist onIsDeviceLocked(Z)V
    .registers 5
    .param p1, "locked"    # Z

    .line 170
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/devicelock/DeviceLockManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/devicelock/DeviceLockManager$3$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/devicelock/DeviceLockManager$3$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method
