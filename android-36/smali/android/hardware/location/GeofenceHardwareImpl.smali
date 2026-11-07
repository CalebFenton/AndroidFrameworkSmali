.class public final Landroid/hardware/location/GeofenceHardwareImpl;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;,
        Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    }
.end annotation


# static fields
.field private static final greylist-max-o ADD_GEOFENCE_CALLBACK:I = 0x2

.field private static final greylist-max-o CALLBACK_ADD:I = 0x2

.field private static final greylist-max-o CALLBACK_REMOVE:I = 0x3

.field private static final greylist-max-o CAPABILITY_GNSS:I = 0x1

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o FIRST_VERSION_WITH_CAPABILITIES:I = 0x2

.field private static final greylist-max-o GEOFENCE_CALLBACK_BINDER_DIED:I = 0x6

.field private static final greylist-max-o GEOFENCE_STATUS:I = 0x1

.field private static final greylist-max-o GEOFENCE_TRANSITION_CALLBACK:I = 0x1

.field private static final greylist-max-o LOCATION_HAS_ACCURACY:I = 0x10

.field private static final greylist-max-o LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final greylist-max-o LOCATION_HAS_BEARING:I = 0x8

.field private static final greylist-max-o LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final greylist-max-o LOCATION_HAS_SPEED:I = 0x4

.field private static final greylist-max-o LOCATION_INVALID:I = 0x0

.field private static final greylist-max-o MONITOR_CALLBACK_BINDER_DIED:I = 0x4

.field private static final greylist-max-o PAUSE_GEOFENCE_CALLBACK:I = 0x4

.field private static final greylist-max-o REAPER_GEOFENCE_ADDED:I = 0x1

.field private static final greylist-max-o REAPER_MONITOR_CALLBACK_ADDED:I = 0x2

.field private static final greylist-max-o REAPER_REMOVED:I = 0x3

.field private static final greylist-max-o REMOVE_GEOFENCE_CALLBACK:I = 0x3

.field private static final greylist-max-o RESOLUTION_LEVEL_COARSE:I = 0x2

.field private static final greylist-max-o RESOLUTION_LEVEL_FINE:I = 0x3

.field private static final greylist-max-o RESOLUTION_LEVEL_NONE:I = 0x1

.field private static final greylist-max-o RESUME_GEOFENCE_CALLBACK:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "GeofenceHardwareImpl"

.field private static greylist-max-o sInstance:Landroid/hardware/location/GeofenceHardwareImpl;


# instance fields
.field private final greylist-max-o mCallbacks:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/location/IGeofenceHardwareMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCallbacksHandler:Landroid/os/Handler;

.field private greylist-max-o mCapabilities:I

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mFusedService:Landroid/location/IFusedGeofenceHardware;

.field private greylist-max-o mGeofenceHandler:Landroid/os/Handler;

.field private final greylist-max-o mGeofences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/location/IGeofenceHardwareCallback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mGpsService:Landroid/location/IGpsGeofenceHardware;

.field private greylist-max-o mReaperHandler:Landroid/os/Handler;

.field private final greylist-max-o mReapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/location/GeofenceHardwareImpl$Reaper;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSupportedMonitorTypes:[I

.field private greylist-max-o mVersion:I

.field private greylist-max-o mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbacksHandler(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGeofenceHandler(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGeofences(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReaperHandler(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReapers(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseWakeLock(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 44
    const-string v0, "GeofenceHardwareImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 52
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;

    .line 59
    const/4 v1, 0x1

    iput v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    .line 61
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    .line 573
    new-instance v2, Landroid/hardware/location/GeofenceHardwareImpl$1;

    invoke-direct {v2, p0}, Landroid/hardware/location/GeofenceHardwareImpl$1;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    .line 705
    new-instance v2, Landroid/hardware/location/GeofenceHardwareImpl$2;

    invoke-direct {v2, p0}, Landroid/hardware/location/GeofenceHardwareImpl$2;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    .line 759
    new-instance v2, Landroid/hardware/location/GeofenceHardwareImpl$3;

    invoke-direct {v2, p0}, Landroid/hardware/location/GeofenceHardwareImpl$3;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    .line 107
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    .line 109
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 111
    invoke-direct {p0, v1, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 115
    return-void
.end method

.method private greylist-max-o acquireWakeLock()V
    .registers 4

    .line 118
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_17

    .line 119
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    .line 120
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 121
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GeofenceHardwareImpl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_17
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 124
    return-void
.end method

.method public static declared-synchronized greylist-max-o getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/hardware/location/GeofenceHardwareImpl;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v1, :cond_e

    .line 101
    new-instance v1, Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 103
    :cond_e
    sget-object v1, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 99
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private greylist-max-o releaseWakeLock()V
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 128
    :cond_d
    return-void
.end method

.method private greylist-max-o reportGeofenceOperationStatus(III)V
    .registers 5
    .param p1, "operation"    # I
    .param p2, "geofenceId"    # I
    .param p3, "operationStatus"    # I

    .line 533
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    .line 534
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 535
    .local v0, "message":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 536
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 537
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 538
    return-void
.end method

.method private greylist-max-o setMonitorAvailability(II)V
    .registers 5
    .param p1, "monitor"    # I
    .param p2, "val"    # I

    .line 824
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    monitor-enter v0

    .line 825
    :try_start_3
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    aput p2, v1, p1

    .line 826
    monitor-exit v0

    .line 827
    return-void

    .line 826
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private greylist-max-o updateFusedHardwareAvailability()V
    .registers 6

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_f

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_d

    goto :goto_f

    :cond_d
    move v2, v0

    goto :goto_10

    :cond_f
    :goto_f
    move v2, v1

    .line 153
    .local v2, "hasGnnsCapabilities":Z
    :goto_10
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-eqz v3, :cond_22

    .line 154
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    invoke-interface {v3}, Landroid/location/IFusedGeofenceHardware;->isSupported()Z

    move-result v3
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_25

    if-eqz v3, :cond_20

    if-eqz v2, :cond_20

    move v3, v1

    goto :goto_23

    :cond_20
    move v3, v0

    goto :goto_23

    .line 155
    :cond_22
    move v3, v0

    :goto_23
    nop

    .line 159
    .end local v2    # "hasGnnsCapabilities":Z
    .local v3, "fusedSupported":Z
    goto :goto_2e

    .line 156
    .end local v3    # "fusedSupported":Z
    :catch_25
    move-exception v2

    .line 157
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "GeofenceHardwareImpl"

    const-string v4, "RemoteException calling LocationManagerService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v3, 0x0

    .line 161
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "fusedSupported":Z
    :goto_2e
    if-eqz v3, :cond_33

    .line 162
    invoke-direct {p0, v1, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 166
    :cond_33
    return-void
.end method

.method private greylist-max-o updateGpsHardwareAvailability()V
    .registers 4

    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v0}, Landroid/location/IGpsGeofenceHardware;->isHardwareGeofenceSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 138
    .local v0, "gpsSupported":Z
    goto :goto_11

    .line 135
    .end local v0    # "gpsSupported":Z
    :catch_7
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GeofenceHardwareImpl"

    const-string v2, "Remote Exception calling LocationManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x0

    move v0, v1

    .line 140
    .local v0, "gpsSupported":Z
    :goto_11
    if-eqz v0, :cond_17

    .line 143
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 146
    :cond_17
    return-void
.end method


# virtual methods
.method public greylist-max-o addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .registers 24
    .param p1, "monitoringType"    # I
    .param p2, "request"    # Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .param p3, "callback"    # Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 259
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    move-result v5

    .line 263
    .local v5, "geofenceId":I
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 264
    const-string v0, "addCircularFence: monitoringType=%d, %s"

    .line 266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v6

    .line 264
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "message":Ljava/lang/String;
    const-string v6, "GeofenceHardwareImpl"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v0    # "message":Ljava/lang/String;
    :cond_23
    iget-object v6, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v6

    .line 277
    :try_start_26
    iget-object v0, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_c0

    .line 280
    const/4 v6, 0x1

    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_c4

    .line 312
    const/4 v0, 0x0

    move v7, v0

    .local v0, "result":Z
    goto :goto_87

    .line 299
    .end local v0    # "result":Z
    :pswitch_34
    iget-object v7, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v7, :cond_39

    .line 300
    return v0

    .line 303
    :cond_39
    :try_start_39
    iget-object v7, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    new-array v8, v6, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    aput-object v3, v8, v0

    invoke-interface {v7, v8}, Landroid/location/IFusedGeofenceHardware;->addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_42} :catch_45

    .line 305
    const/4 v0, 0x1

    .line 309
    .restart local v0    # "result":Z
    move v7, v0

    goto :goto_87

    .line 306
    .end local v0    # "result":Z
    :catch_45
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "GeofenceHardwareImpl"

    const-string v8, "AddGeofence: RemoteException calling LocationManagerService"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, "result":Z
    move v7, v0

    goto :goto_87

    .line 282
    .end local v0    # "result":Z
    :pswitch_50
    iget-object v7, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v7, :cond_55

    return v0

    .line 284
    :cond_55
    :try_start_55
    iget-object v8, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 285
    invoke-virtual {v3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    move-result v9

    .line 286
    invoke-virtual {v3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLatitude()D

    move-result-wide v10

    .line 287
    invoke-virtual {v3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLongitude()D

    move-result-wide v12

    .line 288
    invoke-virtual {v3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getRadius()D

    move-result-wide v14

    .line 289
    invoke-virtual {v3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLastTransition()I

    move-result v16

    .line 290
    invoke-virtual {v3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getMonitorTransitions()I

    move-result v17

    .line 291
    invoke-virtual {v3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getNotificationResponsiveness()I

    move-result v18

    .line 292
    invoke-virtual {v3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getUnknownTimer()I

    move-result v19

    .line 284
    invoke-interface/range {v8 .. v19}, Landroid/location/IGpsGeofenceHardware;->addCircularHardwareGeofence(IDDDIIII)Z

    move-result v0
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_7b} :catch_7d

    .line 296
    .restart local v0    # "result":Z
    move v7, v0

    goto :goto_87

    .line 293
    .end local v0    # "result":Z
    :catch_7d
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "GeofenceHardwareImpl"

    const-string v8, "AddGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, "result":Z
    move v7, v0

    .line 314
    .end local v0    # "result":Z
    .local v7, "result":Z
    :goto_87
    if-eqz v7, :cond_97

    .line 315
    iget-object v0, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 316
    .local v0, "m":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 317
    iget-object v6, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    .end local v0    # "m":Landroid/os/Message;
    goto :goto_a0

    .line 319
    :cond_97
    iget-object v8, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v8

    .line 320
    :try_start_9a
    iget-object v0, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 321
    monitor-exit v8
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_bd

    .line 324
    :goto_a0
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_bc

    const-string v0, "GeofenceHardwareImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addCircularFence: Result is: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_bc
    return v7

    .line 321
    :catchall_bd
    move-exception v0

    :try_start_be
    monitor-exit v8
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v0

    .line 278
    .end local v7    # "result":Z
    :catchall_c0
    move-exception v0

    :try_start_c1
    monitor-exit v6
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v0

    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_50
        :pswitch_34
    .end packed-switch
.end method

.method greylist-max-o getAllowedResolutionLevel(II)I
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 922
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    .line 924
    const/4 v0, 0x3

    return v0

    .line 925
    :cond_c
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_18

    .line 927
    const/4 v0, 0x2

    return v0

    .line 929
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getCapabilitiesForMonitoringType(I)I
    .registers 5
    .param p1, "monitoringType"    # I

    .line 237
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_1a

    goto :goto_17

    .line 239
    :pswitch_8
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_20

    goto :goto_17

    .line 243
    :pswitch_d
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_15

    .line 244
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    return v0

    .line 248
    :cond_15
    return v0

    .line 241
    :pswitch_16
    return v0

    .line 252
    :goto_17
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method

.method greylist-max-o getMonitoringResolutionLevel(I)I
    .registers 3
    .param p1, "monitoringType"    # I

    .line 831
    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_8

    .line 837
    const/4 v0, 0x1

    return v0

    .line 835
    :pswitch_6
    return v0

    .line 833
    :pswitch_7
    return v0

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public greylist-max-o getMonitoringTypes()[I
    .registers 7

    .line 205
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_e

    move v1, v4

    goto :goto_f

    :cond_e
    move v1, v2

    .line 208
    .local v1, "gpsSupported":Z
    :goto_f
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    aget v5, v5, v4

    if-eq v5, v3, :cond_17

    move v3, v4

    goto :goto_18

    :cond_17
    move v3, v2

    .line 210
    .local v3, "fusedSupported":Z
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_31

    .line 212
    if-eqz v1, :cond_27

    .line 213
    if-eqz v3, :cond_22

    .line 214
    filled-new-array {v2, v4}, [I

    move-result-object v0

    return-object v0

    .line 218
    :cond_22
    filled-new-array {v2}, [I

    move-result-object v0

    return-object v0

    .line 220
    :cond_27
    if-eqz v3, :cond_2e

    .line 221
    filled-new-array {v4}, [I

    move-result-object v0

    return-object v0

    .line 223
    :cond_2e
    new-array v0, v2, [I

    return-object v0

    .line 210
    .end local v1    # "gpsSupported":Z
    .end local v3    # "fusedSupported":Z
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public greylist-max-o getStatusOfMonitoringType(I)I
    .registers 5
    .param p1, "monitoringType"    # I

    .line 228
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    array-length v1, v1

    if-ge p1, v1, :cond_10

    if-ltz p1, :cond_10

    .line 232
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    aget v1, v1, p1

    monitor-exit v0

    return v1

    .line 230
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown monitoring type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/location/GeofenceHardwareImpl;
    .end local p1    # "monitoringType":I
    throw v1

    .line 233
    .restart local p0    # "this":Landroid/hardware/location/GeofenceHardwareImpl;
    .restart local p1    # "monitoringType":I
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public greylist-max-o onCapabilities(I)V
    .registers 2
    .param p1, "capabilities"    # I

    .line 181
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    .line 182
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    .line 183
    return-void
.end method

.method public greylist-max-o pauseGeofence(II)Z
    .registers 7
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .line 371
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause Geofence: GeofenceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1c
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v0

    .line 374
    :try_start_1f
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 377
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_96

    .line 378
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_9a

    .line 401
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_5a

    .line 389
    .end local v0    # "result":Z
    :pswitch_2e
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v1, :cond_33

    .line 390
    return v0

    .line 393
    :cond_33
    :try_start_33
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    invoke-interface {v0, p1}, Landroid/location/IFusedGeofenceHardware;->pauseMonitoringGeofence(I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_3a

    .line 394
    const/4 v0, 0x1

    .line 398
    .restart local v0    # "result":Z
    goto :goto_5a

    .line 395
    .end local v0    # "result":Z
    :catch_3a
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GeofenceHardwareImpl"

    const-string v2, "PauseGeofence: RemoteException calling LocationManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, "result":Z
    goto :goto_5a

    .line 380
    .end local v0    # "result":Z
    :pswitch_44
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v1, :cond_49

    return v0

    .line 382
    :cond_49
    :try_start_49
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v0, p1}, Landroid/location/IGpsGeofenceHardware;->pauseHardwareGeofence(I)Z

    move-result v0
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4f} :catch_50

    .line 386
    .restart local v0    # "result":Z
    goto :goto_5a

    .line 383
    .end local v0    # "result":Z
    :catch_50
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GeofenceHardwareImpl"

    const-string v2, "PauseGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v0, 0x0

    .line 387
    .local v0, "result":Z
    nop

    .line 403
    :goto_5a
    sget-boolean v1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v1, :cond_76

    const-string v1, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseGeofence: Result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_76
    return v0

    .line 375
    .end local v0    # "result":Z
    :cond_77
    :try_start_77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geofence "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/location/GeofenceHardwareImpl;
    .end local p1    # "geofenceId":I
    .end local p2    # "monitoringType":I
    throw v1

    .line 377
    .restart local p0    # "this":Landroid/hardware/location/GeofenceHardwareImpl;
    .restart local p1    # "geofenceId":I
    .restart local p2    # "monitoringType":I
    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_77 .. :try_end_98} :catchall_96

    throw v1

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_44
        :pswitch_2e
    .end packed-switch
.end method

.method public greylist-max-o registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .registers 6
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 449
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    .line 450
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, "reaperMessage":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 452
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 454
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 455
    .local v1, "m":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 456
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    const/4 v2, 0x1

    return v2
.end method

.method public greylist-max-o removeGeofence(II)Z
    .registers 8
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .line 331
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Geofence: GeofenceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1c
    const/4 v0, 0x0

    .line 334
    .local v0, "result":Z
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v1

    .line 335
    :try_start_20
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 338
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_9c

    .line 339
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_a0

    .line 362
    const/4 v0, 0x0

    goto :goto_60

    .line 350
    :pswitch_2f
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v2, :cond_34

    .line 351
    return v1

    .line 354
    :cond_34
    :try_start_34
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    filled-new-array {p1}, [I

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/location/IFusedGeofenceHardware;->removeGeofences([I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3d} :catch_3f

    .line 355
    const/4 v0, 0x1

    .line 359
    goto :goto_60

    .line 356
    :catch_3f
    move-exception v1

    .line 357
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "RemoveGeofence: RemoteException calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x0

    .line 360
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 341
    :pswitch_49
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v2, :cond_4e

    return v1

    .line 343
    :cond_4e
    :try_start_4e
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v1, p1}, Landroid/location/IGpsGeofenceHardware;->removeHardwareGeofence(I)Z

    move-result v1
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_54} :catch_56

    move v0, v1

    .line 347
    goto :goto_60

    .line 344
    :catch_56
    move-exception v1

    .line 345
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "RemoveGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x0

    .line 348
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 364
    :goto_60
    sget-boolean v1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v1, :cond_7c

    const-string v1, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeGeofence: Result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_7c
    return v0

    .line 336
    :cond_7d
    :try_start_7d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Geofence "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not registered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Z
    .end local p0    # "this":Landroid/hardware/location/GeofenceHardwareImpl;
    .end local p1    # "geofenceId":I
    .end local p2    # "monitoringType":I
    throw v2

    .line 338
    .restart local v0    # "result":Z
    .restart local p0    # "this":Landroid/hardware/location/GeofenceHardwareImpl;
    .restart local p1    # "geofenceId":I
    .restart local p2    # "monitoringType":I
    :catchall_9c
    move-exception v2

    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_7d .. :try_end_9e} :catchall_9c

    throw v2

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_49
        :pswitch_2f
    .end packed-switch
.end method

.method public greylist-max-o reportGeofenceAddStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 544
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddCallback| id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceHardwareImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_26
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 546
    return-void
.end method

.method public greylist-max-o reportGeofenceMonitorStatus(IILandroid/location/Location;I)V
    .registers 8
    .param p1, "monitoringType"    # I
    .param p2, "monitoringStatus"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "source"    # I

    .line 513
    invoke-direct {p0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 514
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    .line 515
    new-instance v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    invoke-direct {v0, p1, p2, p4, p3}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;-><init>(IIILandroid/location/Location;)V

    .line 520
    .local v0, "event":Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 521
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 522
    return-void
.end method

.method public greylist-max-o reportGeofencePauseStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 560
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PauseCallbac| id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceHardwareImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_26
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 562
    return-void
.end method

.method public greylist-max-o reportGeofenceRemoveStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 552
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveCallback| id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceHardwareImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_26
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 554
    return-void
.end method

.method public greylist-max-o reportGeofenceResumeStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 568
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeCallback| id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceHardwareImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_26
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 570
    return-void
.end method

.method public greylist-max-o reportGeofenceTransition(ILandroid/location/Location;IJII)V
    .registers 17
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J
    .param p6, "monitoringType"    # I
    .param p7, "sourcesUsed"    # I

    .line 478
    const-string v0, "GeofenceHardwareImpl"

    if-nez p2, :cond_11

    .line 479
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Invalid Geofence Transition: location=null"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 482
    :cond_11
    sget-boolean v1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v1, :cond_56

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeofenceTransition| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transitionTimestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", monitoringType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sourcesUsed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v8, p7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 482
    :cond_56
    move/from16 v8, p7

    .line 490
    :goto_58
    new-instance v0, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    move v3, p3

    move-wide v4, p4

    move v7, p6

    invoke-direct/range {v0 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;IIJLandroid/location/Location;II)V

    .line 497
    .local v0, "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    .line 499
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 502
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 503
    return-void
.end method

.method public greylist-max-o resumeGeofence(III)Z
    .registers 8
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransition"    # I

    .line 411
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume Geofence: GeofenceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1c
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v0

    .line 414
    :try_start_1f
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 417
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_96

    .line 418
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_9a

    .line 441
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_5a

    .line 429
    .end local v0    # "result":Z
    :pswitch_2e
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v1, :cond_33

    .line 430
    return v0

    .line 433
    :cond_33
    :try_start_33
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    invoke-interface {v0, p1, p3}, Landroid/location/IFusedGeofenceHardware;->resumeMonitoringGeofence(II)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_3a

    .line 434
    const/4 v0, 0x1

    .line 438
    .restart local v0    # "result":Z
    goto :goto_5a

    .line 435
    .end local v0    # "result":Z
    :catch_3a
    move-exception v0

    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GeofenceHardwareImpl"

    const-string v2, "ResumeGeofence: RemoteException calling LocationManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, "result":Z
    goto :goto_5a

    .line 420
    .end local v0    # "result":Z
    :pswitch_44
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v1, :cond_49

    return v0

    .line 422
    :cond_49
    :try_start_49
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v0, p1, p3}, Landroid/location/IGpsGeofenceHardware;->resumeHardwareGeofence(II)Z

    move-result v0
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4f} :catch_50

    .line 426
    .restart local v0    # "result":Z
    goto :goto_5a

    .line 423
    .end local v0    # "result":Z
    :catch_50
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GeofenceHardwareImpl"

    const-string v2, "ResumeGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, "result":Z
    nop

    .line 443
    :goto_5a
    sget-boolean v1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v1, :cond_76

    const-string v1, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeGeofence: Result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_76
    return v0

    .line 415
    .end local v0    # "result":Z
    :cond_77
    :try_start_77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geofence "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/location/GeofenceHardwareImpl;
    .end local p1    # "geofenceId":I
    .end local p2    # "monitoringType":I
    .end local p3    # "monitorTransition":I
    throw v1

    .line 417
    .restart local p0    # "this":Landroid/hardware/location/GeofenceHardwareImpl;
    .restart local p1    # "geofenceId":I
    .restart local p2    # "monitoringType":I
    .restart local p3    # "monitorTransition":I
    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_77 .. :try_end_98} :catchall_96

    throw v1

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_44
        :pswitch_2e
    .end packed-switch
.end method

.method public greylist-max-o setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    .registers 4
    .param p1, "service"    # Landroid/location/IFusedGeofenceHardware;

    .line 191
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v0, :cond_a

    .line 192
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 193
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    goto :goto_1c

    .line 194
    :cond_a
    const-string v0, "GeofenceHardwareImpl"

    if-nez p1, :cond_17

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 196
    const-string v1, "Fused Geofence Hardware service seems to have crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 198
    :cond_17
    const-string v1, "Error: FusedService being set again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_1c
    return-void
.end method

.method public greylist-max-o setGpsHardwareGeofence(Landroid/location/IGpsGeofenceHardware;)V
    .registers 4
    .param p1, "service"    # Landroid/location/IGpsGeofenceHardware;

    .line 169
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v0, :cond_a

    .line 170
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 171
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateGpsHardwareAvailability()V

    goto :goto_1c

    .line 172
    :cond_a
    const-string v0, "GeofenceHardwareImpl"

    if-nez p1, :cond_17

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 174
    const-string v1, "GPS Geofence Hardware service seems to have crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 176
    :cond_17
    const-string v1, "Error: GpsService being set again."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_1c
    return-void
.end method

.method public greylist-max-o setVersion(I)V
    .registers 2
    .param p1, "version"    # I

    .line 186
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    .line 187
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    .line 188
    return-void
.end method

.method public greylist-max-o unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .registers 5
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 462
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 463
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 464
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    const/4 v1, 0x1

    return v1
.end method
