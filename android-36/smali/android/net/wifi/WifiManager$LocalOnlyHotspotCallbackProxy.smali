.class Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
.super Landroid/net/wifi/ILocalOnlyHotspotCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalOnlyHotspotCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mWifiManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$m7YkTOczcCilPPtfMNmi9JdzYbo(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->lambda$onHotspotFailed$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mGr7uJqvuQkMq3jX0ZNZde4zlgw(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->lambda$onHotspotStarted$0(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mciUYI-uaOmly2wwiB3EO3o7EKg(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->lambda$onHotspotStopped$1()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    .registers 5
    .param p1, "manager"    # Landroid/net/wifi/WifiManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    .line 7370
    invoke-direct {p0}, Landroid/net/wifi/ILocalOnlyHotspotCallback$Stub;-><init>()V

    .line 7371
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    .line 7372
    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 7373
    iput-object p3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    .line 7374
    return-void
.end method

.method private synthetic blacklist lambda$onHotspotFailed$2(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 7410
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onHotspotStarted$0(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .registers 3
    .param p1, "reservation"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 7389
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHotspotStopped$1()V
    .registers 2

    .line 7399
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    return-void
.end method


# virtual methods
.method public blacklist onHotspotFailed(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 7404
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 7405
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_b

    return-void

    .line 7407
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalOnlyHotspotCallbackProxy: failed to start.  reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7409
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    if-nez v1, :cond_28

    return-void

    .line 7410
    :cond_28
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7411
    return-void
.end method

.method public blacklist onHotspotStarted(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 6
    .param p1, "config"    # Landroid/net/wifi/SoftApConfiguration;

    .line 7378
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 7379
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_b

    return-void

    .line 7381
    :cond_b
    if-nez p1, :cond_19

    .line 7382
    const-string v1, "WifiManager"

    const-string v2, "LocalOnlyHotspotCallbackProxy: config cannot be null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7383
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->onHotspotFailed(I)V

    .line 7384
    return-void

    .line 7386
    :cond_19
    new-instance v1, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 7387
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/SoftApConfiguration;)V

    .line 7388
    .local v1, "reservation":Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    iget-object v2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    if-nez v2, :cond_26

    return-void

    .line 7389
    :cond_26
    iget-object v2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7390
    return-void
.end method

.method public blacklist onHotspotStopped()V
    .registers 4

    .line 7394
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 7395
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_b

    return-void

    .line 7397
    :cond_b
    const-string v1, "WifiManager"

    const-string v2, "LocalOnlyHotspotCallbackProxy: hotspot stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7398
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    if-nez v1, :cond_17

    return-void

    .line 7399
    :cond_17
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7400
    return-void
.end method
