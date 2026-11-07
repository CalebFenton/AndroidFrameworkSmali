.class Landroid/nearby/NearbyManager$BroadcastListenerTransport;
.super Landroid/nearby/IBroadcastListener$Stub;
.source "NearbyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/NearbyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastListenerTransport"
.end annotation


# instance fields
.field private volatile blacklist mBroadcastCallback:Landroid/nearby/BroadcastCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$haQgWCBQNt2hBaIWRBNiQmv49bA(Landroid/nearby/NearbyManager$BroadcastListenerTransport;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->lambda$onStatusChanged$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/nearby/BroadcastCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "broadcastCallback"    # Landroid/nearby/BroadcastCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 442
    invoke-direct {p0}, Landroid/nearby/IBroadcastListener$Stub;-><init>()V

    .line 443
    iput-object p1, p0, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->mBroadcastCallback:Landroid/nearby/BroadcastCallback;

    .line 444
    iput-object p2, p0, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 445
    return-void
.end method

.method private synthetic blacklist lambda$onStatusChanged$0(I)V
    .registers 3
    .param p1, "status"    # I

    .line 464
    iget-object v0, p0, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->mBroadcastCallback:Landroid/nearby/BroadcastCallback;

    if-eqz v0, :cond_9

    .line 465
    iget-object v0, p0, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->mBroadcastCallback:Landroid/nearby/BroadcastCallback;

    invoke-interface {v0, p1}, Landroid/nearby/BroadcastCallback;->onStatusChanged(I)V

    .line 467
    :cond_9
    return-void
.end method


# virtual methods
.method blacklist isRegistered()Z
    .registers 2

    .line 454
    iget-object v0, p0, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->mBroadcastCallback:Landroid/nearby/BroadcastCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist onStatusChanged(I)V
    .registers 4
    .param p1, "status"    # I

    .line 463
    iget-object v0, p0, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/nearby/NearbyManager$BroadcastListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/nearby/NearbyManager$BroadcastListenerTransport$$ExternalSyntheticLambda0;-><init>(Landroid/nearby/NearbyManager$BroadcastListenerTransport;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method

.method blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 448
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null executor"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 450
    iput-object p1, p0, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 451
    return-void
.end method

.method blacklist unregister()V
    .registers 2

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nearby/NearbyManager$BroadcastListenerTransport;->mBroadcastCallback:Landroid/nearby/BroadcastCallback;

    .line 459
    return-void
.end method
