.class Landroid/devicelock/DeviceLockManager$2;
.super Landroid/devicelock/IVoidResultCallback$Stub;
.source "DeviceLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/devicelock/DeviceLockManager;->unlockDevice(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 137
    iput-object p2, p0, Landroid/devicelock/DeviceLockManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/devicelock/DeviceLockManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/devicelock/IVoidResultCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 140
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/devicelock/ParcelableException;)V
    .registers 4
    .param p1, "parcelableException"    # Landroid/devicelock/ParcelableException;

    .line 145
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-virtual {p1}, Landroid/devicelock/ParcelableException;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 4

    .line 140
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/devicelock/DeviceLockManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/devicelock/DeviceLockManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/devicelock/DeviceLockManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method
