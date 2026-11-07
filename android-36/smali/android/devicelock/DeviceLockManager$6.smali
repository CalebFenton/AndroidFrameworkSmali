.class Landroid/devicelock/DeviceLockManager$6;
.super Landroid/devicelock/IGetKioskAppsCallback$Stub;
.source "DeviceLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/devicelock/DeviceLockManager;->getKioskApps(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 300
    iput-object p2, p0, Landroid/devicelock/DeviceLockManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/devicelock/DeviceLockManager$6;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/devicelock/IGetKioskAppsCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onKioskAppsReceived$0(Landroid/os/OutcomeReceiver;Ljava/util/Map;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "kioskApps"    # Ljava/util/Map;

    .line 303
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/devicelock/ParcelableException;)V
    .registers 4
    .param p1, "parcelableException"    # Landroid/devicelock/ParcelableException;

    .line 308
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager$6;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-virtual {p1}, Landroid/devicelock/ParcelableException;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 309
    return-void
.end method

.method public blacklist onKioskAppsReceived(Ljava/util/Map;)V
    .registers 5
    .param p1, "kioskApps"    # Ljava/util/Map;

    .line 303
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/devicelock/DeviceLockManager$6;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/devicelock/DeviceLockManager$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/devicelock/DeviceLockManager$6$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method
