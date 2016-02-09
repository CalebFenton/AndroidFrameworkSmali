.class public Lcom/android/server/location/GeofenceManager;
.super Ljava/lang/Object;
.source "GeofenceManager.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeofenceManager$GeofenceHandler;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final MAX_AGE_NANOS:J = 0x45d964b800L

.field private static final MAX_INTERVAL_MS:J = 0x6ddd00L

.field private static final MAX_SPEED_M_S:I = 0x64

.field private static final MIN_INTERVAL_MS:J = 0xea60L

.field private static final MSG_UPDATE_FENCES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GeofenceManager"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private final mContext:Landroid/content/Context;

.field private mFences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/location/GeofenceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

.field private mLastLocationUpdate:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateInterval:J

.field private mLock:Ljava/lang/Object;

.field private mPendingUpdate:Z

.field private mReceivingLocationUpdates:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/location/GeofenceManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    #@2
    sput-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    #@4
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blacklist"    # Lcom/android/server/location/LocationBlacklist;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    #@a
    .line 83
    new-instance v1, Ljava/util/LinkedList;

    #@c
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@11
    .line 110
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    #@13
    .line 111
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    #@15
    const-string/jumbo v2, "location"

    #@18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/location/LocationManager;

    #@1e
    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    #@20
    .line 112
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    #@22
    const-string/jumbo v2, "appops"

    #@25
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroid/app/AppOpsManager;

    #@2b
    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    #@2d
    .line 113
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    #@2f
    const-string/jumbo v2, "power"

    #@32
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/os/PowerManager;

    #@38
    .line 114
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v1, "GeofenceManager"

    #@3b
    const/4 v2, 0x1

    #@3c
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@42
    .line 115
    new-instance v1, Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    #@44
    invoke-direct {v1, p0}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;-><init>(Lcom/android/server/location/GeofenceManager;)V

    #@47
    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    #@49
    .line 116
    iput-object p2, p0, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    #@4b
    .line 109
    return-void
.end method

.method private getFreshLocationLocked()Landroid/location/Location;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 213
    iget-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    #@7
    .line 214
    :goto_0
    if-nez v0, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 219
    :cond_0
    :goto_1
    if-nez v0, :cond_3

    #@13
    .line 220
    return-object v8

    #@14
    .line 213
    :cond_1
    const/4 v0, 0x0

    #@15
    .local v0, "location":Landroid/location/Location;
    goto :goto_0

    #@16
    .line 215
    .end local v0    # "location":Landroid/location/Location;
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    #@18
    invoke-virtual {v1}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    #@1b
    move-result-object v0

    #@1c
    .local v0, "location":Landroid/location/Location;
    goto :goto_1

    #@1d
    .line 224
    .end local v0    # "location":Landroid/location/Location;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@20
    move-result-wide v2

    #@21
    .line 225
    .local v2, "now":J
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@24
    move-result-wide v4

    #@25
    sub-long v4, v2, v4

    #@27
    const-wide v6, 0x45d964b800L

    #@2c
    cmp-long v1, v4, v6

    #@2e
    if-lez v1, :cond_4

    #@30
    .line 226
    return-object v8

    #@31
    .line 230
    :cond_4
    return-object v0
.end method

.method private removeExpiredFencesLocked()V
    .locals 6

    #@0
    .prologue
    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 188
    .local v2, "time":J
    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    .line 189
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/location/GeofenceState;

    #@16
    .line 191
    .local v1, "state":Lcom/android/server/location/GeofenceState;
    iget-wide v4, v1, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    #@18
    cmp-long v4, v4, v2

    #@1a
    if-gez v4, :cond_0

    #@1c
    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@1f
    goto :goto_0

    #@20
    .line 186
    .end local v1    # "state":Lcom/android/server/location/GeofenceState;
    :cond_1
    return-void
.end method

.method private scheduleUpdateFencesLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 198
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 199
    iput-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    #@7
    .line 200
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->sendEmptyMessage(I)Z

    #@c
    .line 197
    :cond_0
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 9
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 368
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@6
    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    #@8
    .line 371
    const-string/jumbo v6, "android.permission.ACCESS_FINE_LOCATION"

    #@b
    .line 370
    const/4 v2, 0x0

    #@c
    const/4 v5, 0x0

    #@d
    move-object v0, p1

    #@e
    move-object v3, p2

    #@f
    move-object v4, p0

    #@10
    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 367
    :goto_0
    return-void

    #@14
    .line 372
    :catch_0
    move-exception v7

    #@15
    .line 373
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {p0, v8, p1}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V

    #@18
    .line 374
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1d
    goto :goto_0
.end method

.method private sendIntentEnter(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 348
    sget-boolean v1, Lcom/android/server/location/GeofenceManager;->D:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 349
    const-string/jumbo v1, "GeofenceManager"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "sendIntentEnter: pendingIntent="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 352
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@20
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@23
    .line 353
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "entering"

    #@26
    const/4 v2, 0x1

    #@27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@2a
    .line 354
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    #@2d
    .line 347
    return-void
.end method

.method private sendIntentExit(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 358
    sget-boolean v1, Lcom/android/server/location/GeofenceManager;->D:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 359
    const-string/jumbo v1, "GeofenceManager"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "sendIntentExit: pendingIntent="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 362
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@20
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@23
    .line 363
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "entering"

    #@26
    const/4 v2, 0x0

    #@27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@2a
    .line 364
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    #@2d
    .line 357
    return-void
.end method

.method private updateFences()V
    .locals 32

    #@0
    .prologue
    .line 241
    new-instance v4, Ljava/util/LinkedList;

    #@2
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 242
    .local v4, "enterIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    new-instance v6, Ljava/util/LinkedList;

    #@7
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    #@a
    .line 244
    .local v6, "exitIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    #@e
    move-object/from16 v22, v0

    #@10
    monitor-enter v22

    #@11
    .line 245
    const/16 v21, 0x0

    #@13
    :try_start_0
    move/from16 v0, v21

    #@15
    move-object/from16 v1, p0

    #@17
    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    #@19
    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->removeExpiredFencesLocked()V

    #@1c
    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->getFreshLocationLocked()Landroid/location/Location;

    #@1f
    move-result-object v11

    #@20
    .line 256
    .local v11, "location":Landroid/location/Location;
    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@25
    .line 257
    .local v14, "minFenceDistance":D
    const/16 v16, 0x0

    #@27
    .line 258
    .local v16, "needUpdates":Z
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@2b
    move-object/from16 v21, v0

    #@2d
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v20

    #@31
    .local v20, "state$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v21

    #@35
    if-eqz v21, :cond_5

    #@37
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v19

    #@3b
    check-cast v19, Lcom/android/server/location/GeofenceState;

    #@3d
    .line 259
    .local v19, "state":Lcom/android/server/location/GeofenceState;
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    #@41
    move-object/from16 v21, v0

    #@43
    move-object/from16 v0, v19

    #@45
    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    #@47
    move-object/from16 v23, v0

    #@49
    move-object/from16 v0, v21

    #@4b
    move-object/from16 v1, v23

    #@4d
    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    #@50
    move-result v21

    #@51
    if-eqz v21, :cond_1

    #@53
    .line 260
    sget-boolean v21, Lcom/android/server/location/GeofenceManager;->D:Z

    #@55
    if-eqz v21, :cond_0

    #@57
    .line 261
    const-string/jumbo v21, "GeofenceManager"

    #@5a
    new-instance v23, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v24, "skipping geofence processing for blacklisted app: "

    #@62
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v23

    #@66
    .line 262
    move-object/from16 v0, v19

    #@68
    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    #@6a
    move-object/from16 v24, v0

    #@6c
    .line 261
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v23

    #@70
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v23

    #@74
    move-object/from16 v0, v21

    #@76
    move-object/from16 v1, v23

    #@78
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    goto :goto_0

    #@7c
    .line 244
    .end local v11    # "location":Landroid/location/Location;
    .end local v14    # "minFenceDistance":D
    .end local v16    # "needUpdates":Z
    .end local v19    # "state":Lcom/android/server/location/GeofenceState;
    .end local v20    # "state$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v21

    #@7d
    monitor-exit v22

    #@7e
    throw v21

    #@7f
    .line 267
    .restart local v11    # "location":Landroid/location/Location;
    .restart local v14    # "minFenceDistance":D
    .restart local v16    # "needUpdates":Z
    .restart local v19    # "state":Lcom/android/server/location/GeofenceState;
    .restart local v20    # "state$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    move-object/from16 v0, v19

    #@81
    iget v0, v0, Lcom/android/server/location/GeofenceState;->mAllowedResolutionLevel:I

    #@83
    move/from16 v21, v0

    #@85
    invoke-static/range {v21 .. v21}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    #@88
    move-result v17

    #@89
    .line 268
    .local v17, "op":I
    if-ltz v17, :cond_2

    #@8b
    .line 269
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    #@8f
    move-object/from16 v21, v0

    #@91
    move-object/from16 v0, v19

    #@93
    iget v0, v0, Lcom/android/server/location/GeofenceState;->mUid:I

    #@95
    move/from16 v23, v0

    #@97
    .line 270
    move-object/from16 v0, v19

    #@99
    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    #@9b
    move-object/from16 v24, v0

    #@9d
    .line 269
    const/16 v25, 0x1

    #@9f
    move-object/from16 v0, v21

    #@a1
    move/from16 v1, v25

    #@a3
    move/from16 v2, v23

    #@a5
    move-object/from16 v3, v24

    #@a7
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@aa
    move-result v21

    #@ab
    if-eqz v21, :cond_2

    #@ad
    .line 271
    sget-boolean v21, Lcom/android/server/location/GeofenceManager;->D:Z

    #@af
    if-eqz v21, :cond_0

    #@b1
    .line 272
    const-string/jumbo v21, "GeofenceManager"

    #@b4
    new-instance v23, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v24, "skipping geofence processing for no op app: "

    #@bc
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v23

    #@c0
    .line 273
    move-object/from16 v0, v19

    #@c2
    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    #@c4
    move-object/from16 v24, v0

    #@c6
    .line 272
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v23

    #@ca
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v23

    #@ce
    move-object/from16 v0, v21

    #@d0
    move-object/from16 v1, v23

    #@d2
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    goto/16 :goto_0

    #@d7
    .line 279
    :cond_2
    const/16 v16, 0x1

    #@d9
    .line 280
    if-eqz v11, :cond_0

    #@db
    .line 281
    move-object/from16 v0, v19

    #@dd
    invoke-virtual {v0, v11}, Lcom/android/server/location/GeofenceState;->processLocation(Landroid/location/Location;)I

    #@e0
    move-result v5

    #@e1
    .line 282
    .local v5, "event":I
    and-int/lit8 v21, v5, 0x1

    #@e3
    if-eqz v21, :cond_3

    #@e5
    .line 283
    move-object/from16 v0, v19

    #@e7
    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    #@e9
    move-object/from16 v21, v0

    #@eb
    move-object/from16 v0, v21

    #@ed
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f0
    .line 285
    :cond_3
    and-int/lit8 v21, v5, 0x2

    #@f2
    if-eqz v21, :cond_4

    #@f4
    .line 286
    move-object/from16 v0, v19

    #@f6
    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    #@f8
    move-object/from16 v21, v0

    #@fa
    move-object/from16 v0, v21

    #@fc
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ff
    .line 291
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/location/GeofenceState;->getDistanceToBoundary()D

    #@102
    move-result-wide v8

    #@103
    .line 292
    .local v8, "fenceDistance":D
    cmpg-double v21, v8, v14

    #@105
    if-gez v21, :cond_0

    #@107
    .line 293
    move-wide v14, v8

    #@108
    goto/16 :goto_0

    #@10a
    .line 299
    .end local v5    # "event":I
    .end local v8    # "fenceDistance":D
    .end local v17    # "op":I
    .end local v19    # "state":Lcom/android/server/location/GeofenceState;
    :cond_5
    if-eqz v16, :cond_a

    #@10c
    .line 303
    if-eqz v11, :cond_9

    #@10e
    const-wide v24, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@113
    move-wide/from16 v0, v24

    #@115
    invoke-static {v14, v15, v0, v1}, Ljava/lang/Double;->compare(DD)I

    #@118
    move-result v21

    #@119
    if-eqz v21, :cond_9

    #@11b
    .line 304
    const-wide v24, 0x415b774000000000L    # 7200000.0

    #@120
    const-wide v26, 0x40ed4c0000000000L    # 60000.0

    #@125
    .line 305
    const-wide v28, 0x408f400000000000L    # 1000.0

    #@12a
    mul-double v28, v28, v14

    #@12c
    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    #@12e
    div-double v28, v28, v30

    #@130
    .line 304
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    #@133
    move-result-wide v26

    #@134
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->min(DD)D

    #@137
    move-result-wide v24

    #@138
    move-wide/from16 v0, v24

    #@13a
    double-to-long v12, v0

    #@13b
    .line 309
    .local v12, "intervalMs":J
    :goto_1
    move-object/from16 v0, p0

    #@13d
    iget-boolean v0, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    #@13f
    move/from16 v21, v0

    #@141
    if-eqz v21, :cond_6

    #@143
    move-object/from16 v0, p0

    #@145
    iget-wide v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    #@147
    move-wide/from16 v24, v0

    #@149
    cmp-long v21, v24, v12

    #@14b
    if-eqz v21, :cond_7

    #@14d
    .line 310
    :cond_6
    const/16 v21, 0x1

    #@14f
    move/from16 v0, v21

    #@151
    move-object/from16 v1, p0

    #@153
    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    #@155
    .line 311
    move-object/from16 v0, p0

    #@157
    iput-wide v12, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    #@159
    .line 312
    move-object/from16 v0, p0

    #@15b
    iput-object v11, v0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    #@15d
    .line 314
    new-instance v18, Landroid/location/LocationRequest;

    #@15f
    invoke-direct/range {v18 .. v18}, Landroid/location/LocationRequest;-><init>()V

    #@162
    .line 315
    .local v18, "request":Landroid/location/LocationRequest;
    move-object/from16 v0, v18

    #@164
    invoke-virtual {v0, v12, v13}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    #@167
    move-result-object v21

    #@168
    const-wide/16 v24, 0x0

    #@16a
    move-object/from16 v0, v21

    #@16c
    move-wide/from16 v1, v24

    #@16e
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    #@171
    .line 316
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    #@175
    move-object/from16 v21, v0

    #@177
    move-object/from16 v0, p0

    #@179
    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    #@17b
    move-object/from16 v23, v0

    #@17d
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->getLooper()Landroid/os/Looper;

    #@180
    move-result-object v23

    #@181
    move-object/from16 v0, v21

    #@183
    move-object/from16 v1, v18

    #@185
    move-object/from16 v2, p0

    #@187
    move-object/from16 v3, v23

    #@189
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    #@18c
    .line 329
    .end local v12    # "intervalMs":J
    .end local v18    # "request":Landroid/location/LocationRequest;
    :cond_7
    :goto_2
    sget-boolean v21, Lcom/android/server/location/GeofenceManager;->D:Z

    #@18e
    if-eqz v21, :cond_8

    #@190
    .line 330
    const-string/jumbo v21, "GeofenceManager"

    #@193
    new-instance v23, Ljava/lang/StringBuilder;

    #@195
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    const-string/jumbo v24, "updateFences: location="

    #@19b
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v23

    #@19f
    move-object/from16 v0, v23

    #@1a1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v23

    #@1a5
    .line 331
    const-string/jumbo v24, ", mFences.size()="

    #@1a8
    .line 330
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v23

    #@1ac
    .line 331
    move-object/from16 v0, p0

    #@1ae
    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@1b0
    move-object/from16 v24, v0

    #@1b2
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    #@1b5
    move-result v24

    #@1b6
    .line 330
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v23

    #@1ba
    .line 332
    const-string/jumbo v24, ", mReceivingLocationUpdates="

    #@1bd
    .line 330
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v23

    #@1c1
    .line 332
    move-object/from16 v0, p0

    #@1c3
    iget-boolean v0, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    #@1c5
    move/from16 v24, v0

    #@1c7
    .line 330
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v23

    #@1cb
    .line 333
    const-string/jumbo v24, ", mLocationUpdateInterval="

    #@1ce
    .line 330
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v23

    #@1d2
    .line 333
    move-object/from16 v0, p0

    #@1d4
    iget-wide v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    #@1d6
    move-wide/from16 v24, v0

    #@1d8
    .line 330
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v23

    #@1dc
    .line 334
    const-string/jumbo v24, ", mLastLocationUpdate="

    #@1df
    .line 330
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v23

    #@1e3
    .line 334
    move-object/from16 v0, p0

    #@1e5
    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    #@1e7
    move-object/from16 v24, v0

    #@1e9
    .line 330
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v23

    #@1ed
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f0
    move-result-object v23

    #@1f1
    move-object/from16 v0, v21

    #@1f3
    move-object/from16 v1, v23

    #@1f5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f8
    :cond_8
    monitor-exit v22

    #@1f9
    .line 339
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1fc
    move-result-object v10

    #@1fd
    .local v10, "intent$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@200
    move-result v21

    #@201
    if-eqz v21, :cond_b

    #@203
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@206
    move-result-object v7

    #@207
    check-cast v7, Landroid/app/PendingIntent;

    #@209
    .line 340
    .local v7, "intent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    #@20b
    invoke-direct {v0, v7}, Lcom/android/server/location/GeofenceManager;->sendIntentExit(Landroid/app/PendingIntent;)V

    #@20e
    goto :goto_3

    #@20f
    .line 307
    .end local v7    # "intent":Landroid/app/PendingIntent;
    .end local v10    # "intent$iterator":Ljava/util/Iterator;
    :cond_9
    const-wide/32 v12, 0xea60

    #@212
    .restart local v12    # "intervalMs":J
    goto/16 :goto_1

    #@214
    .line 320
    .end local v12    # "intervalMs":J
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    #@216
    iget-boolean v0, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    #@218
    move/from16 v21, v0

    #@21a
    if-eqz v21, :cond_7

    #@21c
    .line 321
    const/16 v21, 0x0

    #@21e
    move/from16 v0, v21

    #@220
    move-object/from16 v1, p0

    #@222
    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    #@224
    .line 322
    const-wide/16 v24, 0x0

    #@226
    move-wide/from16 v0, v24

    #@228
    move-object/from16 v2, p0

    #@22a
    iput-wide v0, v2, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    #@22c
    .line 323
    const/16 v21, 0x0

    #@22e
    move-object/from16 v0, v21

    #@230
    move-object/from16 v1, p0

    #@232
    iput-object v0, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    #@234
    .line 325
    move-object/from16 v0, p0

    #@236
    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    #@238
    move-object/from16 v21, v0

    #@23a
    move-object/from16 v0, v21

    #@23c
    move-object/from16 v1, p0

    #@23e
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@241
    goto/16 :goto_2

    #@243
    .line 342
    .restart local v10    # "intent$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@246
    move-result-object v10

    #@247
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@24a
    move-result v21

    #@24b
    if-eqz v21, :cond_c

    #@24d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@250
    move-result-object v7

    #@251
    check-cast v7, Landroid/app/PendingIntent;

    #@253
    .line 343
    .restart local v7    # "intent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    #@255
    invoke-direct {v0, v7}, Lcom/android/server/location/GeofenceManager;->sendIntentEnter(Landroid/app/PendingIntent;)V

    #@258
    goto :goto_4

    #@259
    .line 240
    .end local v7    # "intent":Landroid/app/PendingIntent;
    :cond_c
    return-void
.end method


# virtual methods
.method public addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    .locals 12
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "allowedResolutionLevel"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 121
    sget-boolean v3, Lcom/android/server/location/GeofenceManager;->D:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 122
    const-string/jumbo v3, "GeofenceManager"

    #@7
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "addFence: request="

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    const-string/jumbo v5, ", geofence="

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 123
    const-string/jumbo v5, ", intent="

    #@25
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 123
    const-string/jumbo v5, ", uid="

    #@30
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    move/from16 v0, p5

    #@36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 123
    const-string/jumbo v5, ", packageName="

    #@3d
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    move-object/from16 v0, p6

    #@43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 126
    :cond_0
    new-instance v2, Lcom/android/server/location/GeofenceState;

    #@50
    .line 127
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getExpireAt()J

    #@53
    move-result-wide v4

    #@54
    move-object v3, p2

    #@55
    move/from16 v6, p4

    #@57
    move/from16 v7, p5

    #@59
    move-object/from16 v8, p6

    #@5b
    move-object v9, p3

    #@5c
    .line 126
    invoke-direct/range {v2 .. v9}, Lcom/android/server/location/GeofenceState;-><init>(Landroid/location/Geofence;JIILjava/lang/String;Landroid/app/PendingIntent;)V

    #@5f
    .line 128
    .local v2, "state":Lcom/android/server/location/GeofenceState;
    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    #@61
    monitor-enter v4

    #@62
    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@64
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@67
    move-result v3

    #@68
    add-int/lit8 v10, v3, -0x1

    #@6a
    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    #@6c
    .line 131
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@6e
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@71
    move-result-object v11

    #@72
    check-cast v11, Lcom/android/server/location/GeofenceState;

    #@74
    .line 132
    .local v11, "w":Lcom/android/server/location/GeofenceState;
    iget-object v3, v11, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    #@76
    invoke-virtual {p2, v3}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v3

    #@7a
    if-eqz v3, :cond_2

    #@7c
    iget-object v3, v11, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    #@7e
    invoke-virtual {p3, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_2

    #@84
    .line 134
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@86
    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@89
    .line 138
    .end local v11    # "w":Lcom/android/server/location/GeofenceState;
    :cond_1
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@8b
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8e
    .line 139
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@91
    monitor-exit v4

    #@92
    .line 120
    return-void

    #@93
    .line 130
    .restart local v11    # "w":Lcom/android/server/location/GeofenceState;
    :cond_2
    add-int/lit8 v10, v10, -0x1

    #@95
    goto :goto_0

    #@96
    .line 128
    .end local v10    # "i":I
    .end local v11    # "w":Lcom/android/server/location/GeofenceState;
    :catchall_0
    move-exception v3

    #@97
    monitor-exit v4

    #@98
    throw v3
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 414
    const-string/jumbo v2, "  Geofences:"

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 416
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/location/GeofenceState;

    #@18
    .line 417
    .local v0, "state":Lcom/android/server/location/GeofenceState;
    const-string/jumbo v2, "    "

    #@1b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@1e
    .line 418
    iget-object v2, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@23
    .line 419
    const-string/jumbo v2, " "

    #@26
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@29
    .line 420
    iget-object v2, v0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    #@2b
    invoke-virtual {v2}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@32
    .line 421
    const-string/jumbo v2, "\n"

    #@35
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@38
    goto :goto_0

    #@39
    .line 413
    .end local v0    # "state":Lcom/android/server/location/GeofenceState;
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 383
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 384
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    #@9
    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 390
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    #@f
    const/4 v2, 0x1

    #@10
    invoke-virtual {v0, v2}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :goto_0
    monitor-exit v1

    #@14
    .line 395
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    #@17
    .line 381
    return-void

    #@18
    .line 392
    :cond_1
    const/4 v0, 0x1

    #@19
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 382
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 405
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 402
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@5
    .line 409
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 399
    return-void
.end method

.method public removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 144
    sget-boolean v2, Lcom/android/server/location/GeofenceManager;->D:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 145
    const-string/jumbo v2, "GeofenceManager"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "removeFence: fence="

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    const-string/jumbo v4, ", intent="

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 148
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    #@2b
    monitor-enter v3

    #@2c
    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@2e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v0

    #@32
    .line 150
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_3

    #@38
    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Lcom/android/server/location/GeofenceState;

    #@3e
    .line 152
    .local v1, "state":Lcom/android/server/location/GeofenceState;
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    #@40
    invoke-virtual {v2, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_1

    #@46
    .line 154
    if-nez p1, :cond_2

    #@48
    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 148
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    .end local v1    # "state":Lcom/android/server/location/GeofenceState;
    :catchall_0
    move-exception v2

    #@4d
    monitor-exit v3

    #@4e
    throw v2

    #@4f
    .line 159
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    .restart local v1    # "state":Lcom/android/server/location/GeofenceState;
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    #@51
    invoke-virtual {p1, v2}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_1

    #@57
    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@5a
    goto :goto_0

    #@5b
    .line 165
    .end local v1    # "state":Lcom/android/server/location/GeofenceState;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    monitor-exit v3

    #@5f
    .line 143
    return-void
.end method

.method public removeFence(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    sget-boolean v2, Lcom/android/server/location/GeofenceManager;->D:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 171
    const-string/jumbo v2, "GeofenceManager"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "removeFence: packageName="

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 174
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    #@20
    monitor-enter v3

    #@21
    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    #@23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v0

    #@27
    .line 176
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_2

    #@2d
    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Lcom/android/server/location/GeofenceState;

    #@33
    .line 178
    .local v1, "state":Lcom/android/server/location/GeofenceState;
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    #@35
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_1

    #@3b
    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 174
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    .end local v1    # "state":Lcom/android/server/location/GeofenceState;
    :catchall_0
    move-exception v2

    #@40
    monitor-exit v3

    #@41
    throw v2

    #@42
    .line 182
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/GeofenceState;>;"
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    monitor-exit v3

    #@46
    .line 169
    return-void
.end method
