.class Landroid/location/LocationManager$GnssStatusTransport;
.super Landroid/location/IGnssStatusListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssStatusTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/IGnssStatusListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/GnssStatus$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mListener:Landroid/location/GnssStatus$Callback;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssStatus$Callback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/location/GnssStatus$Callback;

    .line 3377
    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 3378
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "invalid null executor"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3379
    if-eqz p3, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3380
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3381
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mPackageName:Ljava/lang/String;

    .line 3382
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mAttributionTag:Ljava/lang/String;

    .line 3383
    iput-object p3, p0, Landroid/location/LocationManager$GnssStatusTransport;->mListener:Landroid/location/GnssStatus$Callback;

    .line 3384
    return-void
.end method

.method static synthetic blacklist lambda$onFirstFix$0(ILandroid/location/GnssStatus$Callback;)V
    .registers 2
    .param p0, "ttff"    # I
    .param p1, "listener"    # Landroid/location/GnssStatus$Callback;

    .line 3416
    invoke-virtual {p1, p0}, Landroid/location/GnssStatus$Callback;->onFirstFix(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSvStatusChanged$1(Landroid/location/GnssStatus;Landroid/location/GnssStatus$Callback;)V
    .registers 2
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "listener"    # Landroid/location/GnssStatus$Callback;

    .line 3422
    invoke-virtual {p1, p0}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    return-void
.end method


# virtual methods
.method public blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 3391
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getListener()Landroid/location/GnssStatus$Callback;
    .registers 2

    .line 3401
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mListener:Landroid/location/GnssStatus$Callback;

    return-object v0
.end method

.method public bridge synthetic blacklist getListener()Ljava/lang/Object;
    .registers 2

    .line 3368
    invoke-virtual {p0}, Landroid/location/LocationManager$GnssStatusTransport;->getListener()Landroid/location/GnssStatus$Callback;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 2

    .line 3387
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist onFirstFix(I)V
    .registers 4
    .param p1, "ttff"    # I

    .line 3416
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssStatusTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3418
    return-void
.end method

.method public blacklist onGnssStarted()V
    .registers 3

    .line 3406
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssStatusTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3407
    return-void
.end method

.method public blacklist onGnssStopped()V
    .registers 3

    .line 3411
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssStatusTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3412
    return-void
.end method

.method public blacklist onSvStatusChanged(Landroid/location/GnssStatus;)V
    .registers 4
    .param p1, "gnssStatus"    # Landroid/location/GnssStatus;

    .line 3422
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssStatusTransport$$ExternalSyntheticLambda2;-><init>(Landroid/location/GnssStatus;)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssStatusTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3423
    return-void
.end method

.method public blacklist unregister()V
    .registers 2

    .line 3396
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusTransport;->mListener:Landroid/location/GnssStatus$Callback;

    .line 3397
    return-void
.end method
