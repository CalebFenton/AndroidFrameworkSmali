.class Landroid/location/LocationManager$LocationListenerTransport;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationListenerTransport"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mListener:Landroid/location/LocationListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$D6qWNiASqWesVTzL2iIATMGBBeI(Landroid/location/LocationManager$LocationListenerTransport;)Landroid/location/LocationListener;
    .registers 1

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->lambda$onProviderEnabledChanged$3()Landroid/location/LocationListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Ib3DXdnM1Gueuuwzwl2ab3mTSDk(Landroid/location/LocationManager$LocationListenerTransport;)Landroid/location/LocationListener;
    .registers 1

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->lambda$onLocationChanged$0()Landroid/location/LocationListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$XcVHFeH8cM67tK-1SlszPwxchno(Landroid/location/LocationManager$LocationListenerTransport;)Landroid/location/LocationListener;
    .registers 1

    invoke-direct {p0}, Landroid/location/LocationManager$LocationListenerTransport;->lambda$onFlushComplete$1()Landroid/location/LocationListener;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/location/LocationListener;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/LocationListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 3278
    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    .line 3279
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "invalid null listener"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3280
    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 3281
    invoke-virtual {p0, p2}, Landroid/location/LocationManager$LocationListenerTransport;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 3282
    return-void
.end method

.method private synthetic blacklist lambda$onFlushComplete$1()Landroid/location/LocationListener;
    .registers 2

    .line 3321
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic blacklist lambda$onFlushComplete$2(ILandroid/location/LocationListener;)V
    .registers 2
    .param p0, "requestCode"    # I
    .param p1, "listener"    # Landroid/location/LocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3322
    invoke-interface {p1, p0}, Landroid/location/LocationListener;->onFlushComplete(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onLocationChanged$0()Landroid/location/LocationListener;
    .registers 2

    .line 3300
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private synthetic blacklist lambda$onProviderEnabledChanged$3()Landroid/location/LocationListener;
    .registers 2

    .line 3327
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic blacklist lambda$onProviderEnabledChanged$4(ZLjava/lang/String;Landroid/location/LocationListener;)V
    .registers 3
    .param p0, "enabled"    # Z
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3328
    if-eqz p0, :cond_6

    .line 3329
    invoke-interface {p2, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_9

    .line 3331
    :cond_6
    invoke-interface {p2, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 3333
    :goto_9
    return-void
.end method


# virtual methods
.method blacklist isRegistered()Z
    .registers 2

    .line 3290
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist onFlushComplete(I)V
    .registers 5
    .param p1, "requestCode"    # I

    .line 3321
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda1;-><init>(Landroid/location/LocationManager$LocationListenerTransport;)V

    new-instance v2, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/location/LocationManager$LocationListenerTransport;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 3323
    return-void
.end method

.method public blacklist onLocationChanged(Ljava/util/List;Landroid/os/IRemoteCallback;)V
    .registers 6
    .param p2, "onCompleteCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;",
            "Landroid/os/IRemoteCallback;",
            ")V"
        }
    .end annotation

    .line 3300
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda0;-><init>(Landroid/location/LocationManager$LocationListenerTransport;)V

    new-instance v2, Landroid/location/LocationManager$LocationListenerTransport$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/location/LocationManager$LocationListenerTransport$1;-><init>(Landroid/location/LocationManager$LocationListenerTransport;Ljava/util/List;Landroid/os/IRemoteCallback;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/location/LocationManager$LocationListenerTransport;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 3317
    return-void
.end method

.method public blacklist onProviderEnabledChanged(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 3327
    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda3;-><init>(Landroid/location/LocationManager$LocationListenerTransport;)V

    new-instance v2, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, p1}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda4;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/location/LocationManager$LocationListenerTransport;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 3334
    return-void
.end method

.method blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 3285
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null executor"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3286
    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3287
    return-void
.end method

.method blacklist unregister()V
    .registers 2

    .line 3294
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 3295
    return-void
.end method
