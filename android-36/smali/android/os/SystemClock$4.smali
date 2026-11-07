.class Landroid/os/SystemClock$4;
.super Landroid/os/SimpleClock;
.source "SystemClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/SystemClock;->currentGnssTimeClock()Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mMgr:Landroid/location/ILocationManager;


# direct methods
.method constructor blacklist <init>(Ljava/time/ZoneId;)V
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 415
    invoke-direct {p0, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    .line 416
    nop

    .line 417
    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemClock$4;->mMgr:Landroid/location/ILocationManager;

    .line 416
    return-void
.end method


# virtual methods
.method public whitelist test-api millis()J
    .registers 8

    .line 422
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemClock$4;->mMgr:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_25

    .line 425
    .local v0, "time":Landroid/location/LocationTime;
    nop

    .line 426
    if-eqz v0, :cond_1d

    .line 429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 430
    .local v1, "currentNanos":J
    invoke-virtual {v0}, Landroid/location/LocationTime;->getElapsedRealtimeNanos()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    .line 431
    .local v3, "deltaMs":J
    invoke-virtual {v0}, Landroid/location/LocationTime;->getUnixEpochTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    return-wide v5

    .line 427
    .end local v1    # "currentNanos":J
    .end local v3    # "deltaMs":J
    :cond_1d
    new-instance v1, Ljava/time/DateTimeException;

    const-string v2, "Gnss based time is not available."

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    .end local v0    # "time":Landroid/location/LocationTime;
    :catch_25
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
