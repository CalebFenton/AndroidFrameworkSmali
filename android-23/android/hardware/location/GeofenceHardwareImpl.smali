.class public final Landroid/hardware/location/GeofenceHardwareImpl;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;,
        Landroid/hardware/location/GeofenceHardwareImpl$Reaper;,
        Landroid/hardware/location/GeofenceHardwareImpl$1;,
        Landroid/hardware/location/GeofenceHardwareImpl$2;,
        Landroid/hardware/location/GeofenceHardwareImpl$3;
    }
.end annotation


# static fields
.field private static final ADD_GEOFENCE_CALLBACK:I = 0x2

.field private static final CALLBACK_ADD:I = 0x2

.field private static final CALLBACK_REMOVE:I = 0x3

.field private static final CAPABILITY_GNSS:I = 0x1

.field private static final DEBUG:Z

.field private static final FIRST_VERSION_WITH_CAPABILITIES:I = 0x2

.field private static final GEOFENCE_CALLBACK_BINDER_DIED:I = 0x6

.field private static final GEOFENCE_STATUS:I = 0x1

.field private static final GEOFENCE_TRANSITION_CALLBACK:I = 0x1

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MONITOR_CALLBACK_BINDER_DIED:I = 0x4

.field private static final PAUSE_GEOFENCE_CALLBACK:I = 0x4

.field private static final REAPER_GEOFENCE_ADDED:I = 0x1

.field private static final REAPER_MONITOR_CALLBACK_ADDED:I = 0x2

.field private static final REAPER_REMOVED:I = 0x3

.field private static final REMOVE_GEOFENCE_CALLBACK:I = 0x3

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x2

.field private static final RESOLUTION_LEVEL_FINE:I = 0x3

.field private static final RESOLUTION_LEVEL_NONE:I = 0x1

.field private static final RESUME_GEOFENCE_CALLBACK:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GeofenceHardwareImpl"

.field private static sInstance:Landroid/hardware/location/GeofenceHardwareImpl;


# instance fields
.field private final mCallbacks:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/location/IGeofenceHardwareMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksHandler:Landroid/os/Handler;

.field private mCapabilities:I

.field private final mContext:Landroid/content/Context;

.field private mFusedService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHandler:Landroid/os/Handler;

.field private final mGeofences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/location/IGeofenceHardwareCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsService:Landroid/location/IGpsGeofenceHardware;

.field private mReaperHandler:Landroid/os/Handler;

.field private final mReapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/location/GeofenceHardwareImpl$Reaper;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedMonitorTypes:[I

.field private mVersion:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 43
    const-string/jumbo v0, "GeofenceHardwareImpl"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@a
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x2

    #@2
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 50
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    .line 49
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@c
    .line 52
    new-array v0, v1, [Ljava/util/ArrayList;

    #@e
    .line 51
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;

    #@10
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;

    #@17
    .line 58
    iput v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    #@19
    .line 60
    new-array v0, v1, [I

    #@1b
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    #@1d
    .line 572
    new-instance v0, Landroid/hardware/location/GeofenceHardwareImpl$1;

    #@1f
    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareImpl$1;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    #@22
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    #@24
    .line 704
    new-instance v0, Landroid/hardware/location/GeofenceHardwareImpl$2;

    #@26
    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareImpl$2;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    #@29
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    #@2b
    .line 758
    new-instance v0, Landroid/hardware/location/GeofenceHardwareImpl$3;

    #@2d
    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareImpl$3;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    #@30
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    #@32
    .line 106
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    #@34
    .line 108
    const/4 v0, 0x0

    #@35
    invoke-direct {p0, v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    #@38
    .line 110
    invoke-direct {p0, v2, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    #@3b
    .line 105
    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    #@0
    .prologue
    .line 117
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 119
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v2, "power"

    #@9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/os/PowerManager;

    #@f
    .line 120
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v1, "GeofenceHardwareImpl"

    #@12
    const/4 v2, 0x1

    #@13
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@19
    .line 122
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1b
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@1e
    .line 116
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-class v1, Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    monitor-enter v1

    #@3
    .line 99
    :try_start_0
    sget-object v0, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 100
    new-instance v0, Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareImpl;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;

    #@e
    .line 102
    :cond_0
    sget-object v0, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private releaseWakeLock()V
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@d
    .line 125
    :cond_0
    return-void
.end method

.method private reportGeofenceOperationStatus(III)V
    .locals 2
    .param p1, "operation"    # I
    .param p2, "geofenceId"    # I
    .param p3, "operationStatus"    # I

    #@0
    .prologue
    .line 532
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    #@3
    .line 533
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    #@5
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 534
    .local v0, "message":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@b
    .line 535
    iput p3, v0, Landroid/os/Message;->arg2:I

    #@d
    .line 536
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 531
    return-void
.end method

.method private setMonitorAvailability(II)V
    .locals 2
    .param p1, "monitor"    # I
    .param p2, "val"    # I

    #@0
    .prologue
    .line 823
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    #@2
    monitor-enter v1

    #@3
    .line 824
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    #@5
    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 822
    return-void

    #@9
    .line 823
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method private updateFusedHardwareAvailability()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 150
    :try_start_0
    iget v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    #@3
    const/4 v4, 0x2

    #@4
    if-lt v3, v4, :cond_1

    #@6
    .line 151
    iget v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    #@8
    and-int/lit8 v3, v3, 0x1

    #@a
    if-eqz v3, :cond_2

    #@c
    const/4 v2, 0x1

    #@d
    .line 152
    .local v2, "hasGnnsCapabilities":Z
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@f
    if-eqz v3, :cond_4

    #@11
    .line 153
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@13
    invoke-interface {v3}, Landroid/location/IFusedGeofenceHardware;->isSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_3

    #@19
    move v1, v2

    #@1a
    .line 160
    .end local v2    # "hasGnnsCapabilities":Z
    :goto_1
    if-eqz v1, :cond_0

    #@1c
    .line 162
    const/4 v3, 0x1

    #@1d
    .line 161
    invoke-direct {p0, v3, v5}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    #@20
    .line 147
    :cond_0
    return-void

    #@21
    .line 150
    :cond_1
    const/4 v2, 0x1

    #@22
    .restart local v2    # "hasGnnsCapabilities":Z
    goto :goto_0

    #@23
    .line 151
    .end local v2    # "hasGnnsCapabilities":Z
    :cond_2
    const/4 v2, 0x0

    #@24
    .restart local v2    # "hasGnnsCapabilities":Z
    goto :goto_0

    #@25
    .line 153
    :cond_3
    const/4 v1, 0x0

    #@26
    .local v1, "fusedSupported":Z
    goto :goto_1

    #@27
    .line 154
    .end local v1    # "fusedSupported":Z
    :cond_4
    const/4 v1, 0x0

    #@28
    .restart local v1    # "fusedSupported":Z
    goto :goto_1

    #@29
    .line 155
    .end local v1    # "fusedSupported":Z
    .end local v2    # "hasGnnsCapabilities":Z
    :catch_0
    move-exception v0

    #@2a
    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "GeofenceHardwareImpl"

    #@2d
    const-string/jumbo v4, "RemoteException calling LocationManagerService"

    #@30
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 157
    const/4 v1, 0x0

    #@34
    .restart local v1    # "fusedSupported":Z
    goto :goto_1
.end method

.method private updateGpsHardwareAvailability()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 133
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@3
    invoke-interface {v2}, Landroid/location/IGpsGeofenceHardware;->isHardwareGeofenceSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v1

    #@7
    .line 139
    :goto_0
    if-eqz v1, :cond_0

    #@9
    .line 142
    invoke-direct {p0, v4, v4}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    #@c
    .line 129
    :cond_0
    return-void

    #@d
    .line 134
    :catch_0
    move-exception v0

    #@e
    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@11
    const-string/jumbo v3, "Remote Exception calling LocationManagerService"

    #@14
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 136
    const/4 v1, 0x0

    #@18
    .local v1, "gpsSupported":Z
    goto :goto_0
.end method


# virtual methods
.method public addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 19
    .param p1, "monitoringType"    # I
    .param p2, "request"    # Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .param p3, "callback"    # Landroid/hardware/location/IGeofenceHardwareCallback;

    #@0
    .prologue
    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    #@3
    move-result v15

    #@4
    .line 262
    .local v15, "geofenceId":I
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 264
    const-string/jumbo v2, "addCircularFence: monitoringType=%d, %s"

    #@b
    .line 263
    const/4 v3, 0x2

    #@c
    new-array v3, v3, [Ljava/lang/Object;

    #@e
    .line 265
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v4

    #@12
    const/4 v5, 0x0

    #@13
    aput-object v4, v3, v5

    #@15
    .line 266
    const/4 v4, 0x1

    #@16
    aput-object p2, v3, v4

    #@18
    .line 263
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v17

    #@1c
    .line 267
    .local v17, "message":Ljava/lang/String;
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@1f
    move-object/from16 v0, v17

    #@21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 275
    .end local v17    # "message":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    #@26
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@28
    monitor-enter v3

    #@29
    .line 276
    :try_start_0
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@2d
    move-object/from16 v0, p3

    #@2f
    invoke-virtual {v2, v15, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit v3

    #@33
    .line 279
    packed-switch p1, :pswitch_data_0

    #@36
    .line 311
    const/16 v18, 0x0

    #@38
    .line 313
    :goto_0
    if-eqz v18, :cond_4

    #@3a
    .line 314
    move-object/from16 v0, p0

    #@3c
    iget-object v2, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    #@3e
    const/4 v3, 0x1

    #@3f
    move-object/from16 v0, p3

    #@41
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@44
    move-result-object v16

    #@45
    .line 315
    .local v16, "m":Landroid/os/Message;
    move/from16 v0, p1

    #@47
    move-object/from16 v1, v16

    #@49
    iput v0, v1, Landroid/os/Message;->arg1:I

    #@4b
    .line 316
    move-object/from16 v0, p0

    #@4d
    iget-object v2, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    #@4f
    move-object/from16 v0, v16

    #@51
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@54
    .line 323
    .end local v16    # "m":Landroid/os/Message;
    :goto_1
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@56
    if-eqz v2, :cond_1

    #@58
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@5b
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v4, "addCircularFence: Result is: "

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    move/from16 v0, v18

    #@69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 324
    :cond_1
    return v18

    #@75
    .line 275
    :catchall_0
    move-exception v2

    #@76
    monitor-exit v3

    #@77
    throw v2

    #@78
    .line 281
    :pswitch_0
    move-object/from16 v0, p0

    #@7a
    iget-object v2, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@7c
    if-nez v2, :cond_2

    #@7e
    const/4 v2, 0x0

    #@7f
    return v2

    #@80
    .line 283
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@82
    iget-object v2, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@84
    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    #@87
    move-result v3

    #@88
    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLatitude()D

    #@8b
    move-result-wide v4

    #@8c
    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLongitude()D

    #@8f
    move-result-wide v6

    #@90
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getRadius()D

    #@93
    move-result-wide v8

    #@94
    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLastTransition()I

    #@97
    move-result v10

    #@98
    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getMonitorTransitions()I

    #@9b
    move-result v11

    #@9c
    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getNotificationResponsiveness()I

    #@9f
    move-result v12

    #@a0
    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getUnknownTimer()I

    #@a3
    move-result v13

    #@a4
    .line 283
    invoke-interface/range {v2 .. v13}, Landroid/location/IGpsGeofenceHardware;->addCircularHardwareGeofence(IDDDIIII)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@a7
    move-result v18

    #@a8
    .local v18, "result":Z
    goto :goto_0

    #@a9
    .line 292
    .end local v18    # "result":Z
    :catch_0
    move-exception v14

    #@aa
    .line 293
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@ad
    const-string/jumbo v3, "AddGeofence: Remote Exception calling LocationManagerService"

    #@b0
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    .line 294
    const/16 v18, 0x0

    #@b5
    .local v18, "result":Z
    goto :goto_0

    #@b6
    .line 298
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v18    # "result":Z
    :pswitch_1
    move-object/from16 v0, p0

    #@b8
    iget-object v2, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@ba
    if-nez v2, :cond_3

    #@bc
    .line 299
    const/4 v2, 0x0

    #@bd
    return v2

    #@be
    .line 302
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    #@c0
    iget-object v2, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@c2
    .line 303
    const/4 v3, 0x1

    #@c3
    new-array v3, v3, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    #@c5
    const/4 v4, 0x0

    #@c6
    aput-object p2, v3, v4

    #@c8
    .line 302
    invoke-interface {v2, v3}, Landroid/location/IFusedGeofenceHardware;->addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@cb
    .line 304
    const/16 v18, 0x1

    #@cd
    .restart local v18    # "result":Z
    goto/16 :goto_0

    #@cf
    .line 305
    .end local v18    # "result":Z
    :catch_1
    move-exception v14

    #@d0
    .line 306
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@d3
    const-string/jumbo v3, "AddGeofence: RemoteException calling LocationManagerService"

    #@d6
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d9
    .line 307
    const/16 v18, 0x0

    #@db
    .restart local v18    # "result":Z
    goto/16 :goto_0

    #@dd
    .line 318
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v18    # "result":Z
    :cond_4
    move-object/from16 v0, p0

    #@df
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@e1
    monitor-enter v3

    #@e2
    .line 319
    :try_start_3
    move-object/from16 v0, p0

    #@e4
    iget-object v2, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@e6
    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->remove(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@e9
    monitor-exit v3

    #@ea
    goto/16 :goto_1

    #@ec
    .line 318
    :catchall_1
    move-exception v2

    #@ed
    monitor-exit v3

    #@ee
    throw v2

    #@ef
    .line 279
    nop

    #@f0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getAllowedResolutionLevel(II)I
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 921
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    #@5
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 923
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 924
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    #@f
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    #@12
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 926
    const/4 v0, 0x2

    #@19
    return v0

    #@1a
    .line 928
    :cond_1
    const/4 v0, 0x1

    #@1b
    return v0
.end method

.method public getCapabilitiesForMonitoringType(I)I
    .locals 3
    .param p1, "monitoringType"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 236
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    #@3
    aget v0, v0, p1

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 251
    :goto_0
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 238
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    #@d
    goto :goto_0

    #@e
    .line 240
    :pswitch_1
    return v2

    #@f
    .line 242
    :pswitch_2
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    #@11
    const/4 v1, 0x2

    #@12
    if-lt v0, v1, :cond_0

    #@14
    .line 243
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    #@16
    return v0

    #@17
    .line 247
    :cond_0
    return v2

    #@18
    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    #@1e
    .line 238
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getMonitoringResolutionLevel(I)I
    .locals 1
    .param p1, "monitoringType"    # I

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    .line 830
    packed-switch p1, :pswitch_data_0

    #@4
    .line 836
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 832
    :pswitch_0
    return v0

    #@7
    .line 834
    :pswitch_1
    return v0

    #@8
    .line 830
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMonitoringTypes()[I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 204
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    #@5
    monitor-enter v3

    #@6
    .line 205
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    #@8
    const/4 v4, 0x0

    #@9
    aget v2, v2, v4

    #@b
    if-eq v2, v7, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    .line 207
    .local v1, "gpsSupported":Z
    :goto_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    #@10
    const/4 v4, 0x1

    #@11
    aget v2, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    if-eq v2, v7, :cond_1

    #@15
    const/4 v0, 0x1

    #@16
    .local v0, "fusedSupported":Z
    :goto_1
    monitor-exit v3

    #@17
    .line 211
    if-eqz v1, :cond_3

    #@19
    .line 212
    if-eqz v0, :cond_2

    #@1b
    .line 213
    filled-new-array {v5, v6}, [I

    #@1e
    move-result-object v2

    #@1f
    return-object v2

    #@20
    .line 205
    .end local v0    # "fusedSupported":Z
    .end local v1    # "gpsSupported":Z
    :cond_0
    const/4 v1, 0x0

    #@21
    .restart local v1    # "gpsSupported":Z
    goto :goto_0

    #@22
    .line 207
    :cond_1
    const/4 v0, 0x0

    #@23
    .restart local v0    # "fusedSupported":Z
    goto :goto_1

    #@24
    .line 204
    .end local v0    # "fusedSupported":Z
    .end local v1    # "gpsSupported":Z
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2

    #@27
    .line 217
    .restart local v0    # "fusedSupported":Z
    .restart local v1    # "gpsSupported":Z
    :cond_2
    new-array v2, v6, [I

    #@29
    aput v5, v2, v5

    #@2b
    return-object v2

    #@2c
    .line 219
    :cond_3
    if-eqz v0, :cond_4

    #@2e
    .line 220
    new-array v2, v6, [I

    #@30
    aput v6, v2, v5

    #@32
    return-object v2

    #@33
    .line 222
    :cond_4
    new-array v2, v5, [I

    #@35
    return-object v2
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 3
    .param p1, "monitoringType"    # I

    #@0
    .prologue
    .line 227
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    #@2
    monitor-enter v1

    #@3
    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    #@5
    array-length v0, v0

    #@6
    if-ge p1, v0, :cond_0

    #@8
    if-gez p1, :cond_1

    #@a
    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "Unknown monitoring type"

    #@f
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 227
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0

    #@16
    .line 231
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    #@18
    aget v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    return v0
.end method

.method public onCapabilities(I)V
    .locals 0
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 180
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    #@2
    .line 181
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    #@5
    .line 179
    return-void
.end method

.method public pauseGeofence(II)Z
    .locals 6
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 370
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Pause Geofence: GeofenceId: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 372
    :cond_0
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@21
    monitor-enter v3

    #@22
    .line 373
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    if-nez v2, :cond_1

    #@2a
    .line 374
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "Geofence "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, " not registered."

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 372
    :catchall_0
    move-exception v2

    #@4c
    monitor-exit v3

    #@4d
    throw v2

    #@4e
    :cond_1
    monitor-exit v3

    #@4f
    .line 377
    packed-switch p2, :pswitch_data_0

    #@52
    .line 400
    const/4 v1, 0x0

    #@53
    .line 402
    :goto_0
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@55
    if-eqz v2, :cond_2

    #@57
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@5a
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "pauseGeofence: Result is: "

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 403
    :cond_2
    return v1

    #@72
    .line 379
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@74
    if-nez v2, :cond_3

    #@76
    return v5

    #@77
    .line 381
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@79
    invoke-interface {v2, p1}, Landroid/location/IGpsGeofenceHardware;->pauseHardwareGeofence(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@7c
    move-result v1

    #@7d
    .local v1, "result":Z
    goto :goto_0

    #@7e
    .line 382
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    #@7f
    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@82
    const-string/jumbo v3, "PauseGeofence: Remote Exception calling LocationManagerService"

    #@85
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 384
    const/4 v1, 0x0

    #@89
    .local v1, "result":Z
    goto :goto_0

    #@8a
    .line 388
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Z
    :pswitch_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@8c
    if-nez v2, :cond_4

    #@8e
    .line 389
    return v5

    #@8f
    .line 392
    :cond_4
    :try_start_2
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@91
    invoke-interface {v2, p1}, Landroid/location/IFusedGeofenceHardware;->pauseMonitoringGeofence(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@94
    .line 393
    const/4 v1, 0x1

    #@95
    .restart local v1    # "result":Z
    goto :goto_0

    #@96
    .line 394
    .end local v1    # "result":Z
    :catch_1
    move-exception v0

    #@97
    .line 395
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@9a
    const-string/jumbo v3, "PauseGeofence: RemoteException calling LocationManagerService"

    #@9d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    .line 396
    const/4 v1, 0x0

    #@a1
    .restart local v1    # "result":Z
    goto :goto_0

    #@a2
    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 4
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 449
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 450
    .local v1, "reaperMessage":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    #@9
    .line 451
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@e
    .line 453
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    #@10
    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 454
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@16
    .line 455
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    #@18
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1b
    .line 456
    const/4 v2, 0x1

    #@1c
    return v2
.end method

.method public removeGeofence(II)Z
    .locals 6
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 330
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Remove Geofence: GeofenceId: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 331
    :cond_0
    const/4 v1, 0x0

    #@20
    .line 333
    .local v1, "result":Z
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@22
    monitor-enter v3

    #@23
    .line 334
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    if-nez v2, :cond_1

    #@2b
    .line 335
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "Geofence "

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    const-string/jumbo v5, " not registered."

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 333
    :catchall_0
    move-exception v2

    #@4d
    monitor-exit v3

    #@4e
    throw v2

    #@4f
    :cond_1
    monitor-exit v3

    #@50
    .line 338
    packed-switch p2, :pswitch_data_0

    #@53
    .line 361
    const/4 v1, 0x0

    #@54
    .line 363
    .end local v1    # "result":Z
    :goto_0
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@56
    if-eqz v2, :cond_2

    #@58
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@5b
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v4, "removeGeofence: Result is: "

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 364
    :cond_2
    return v1

    #@73
    .line 340
    .restart local v1    # "result":Z
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@75
    if-nez v2, :cond_3

    #@77
    return v5

    #@78
    .line 342
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@7a
    invoke-interface {v2, p1}, Landroid/location/IGpsGeofenceHardware;->removeHardwareGeofence(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@7d
    move-result v1

    #@7e
    .local v1, "result":Z
    goto :goto_0

    #@7f
    .line 343
    .local v1, "result":Z
    :catch_0
    move-exception v0

    #@80
    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@83
    const-string/jumbo v3, "RemoveGeofence: Remote Exception calling LocationManagerService"

    #@86
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 345
    const/4 v1, 0x0

    #@8a
    goto :goto_0

    #@8b
    .line 349
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@8d
    if-nez v2, :cond_4

    #@8f
    .line 350
    return v5

    #@90
    .line 353
    :cond_4
    :try_start_2
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@92
    const/4 v3, 0x1

    #@93
    new-array v3, v3, [I

    #@95
    const/4 v4, 0x0

    #@96
    aput p1, v3, v4

    #@98
    invoke-interface {v2, v3}, Landroid/location/IFusedGeofenceHardware;->removeGeofences([I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@9b
    .line 354
    const/4 v1, 0x1

    #@9c
    goto :goto_0

    #@9d
    .line 355
    :catch_1
    move-exception v0

    #@9e
    .line 356
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@a1
    const-string/jumbo v3, "RemoveGeofence: RemoteException calling LocationManagerService"

    #@a4
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    .line 357
    const/4 v1, 0x0

    #@a8
    goto :goto_0

    #@a9
    .line 338
    nop

    #@aa
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reportGeofenceAddStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 543
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "GeofenceHardwareImpl"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "AddCallback| id:"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, ", status:"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 544
    :cond_0
    const/4 v0, 0x2

    #@2a
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    #@2d
    .line 542
    return-void
.end method

.method public reportGeofenceMonitorStatus(IILandroid/location/Location;I)V
    .locals 4
    .param p1, "monitoringType"    # I
    .param p2, "monitoringStatus"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "source"    # I

    #@0
    .prologue
    .line 512
    invoke-direct {p0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    #@3
    .line 513
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    #@6
    .line 514
    new-instance v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    #@8
    invoke-direct {v0, p1, p2, p4, p3}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;-><init>(IIILandroid/location/Location;)V

    #@b
    .line 519
    .local v0, "event":Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    #@d
    const/4 v3, 0x1

    #@e
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    .line 520
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@15
    .line 511
    return-void
.end method

.method public reportGeofencePauseStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 559
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "GeofenceHardwareImpl"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "PauseCallbac| id:"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, ", status"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 560
    :cond_0
    const/4 v0, 0x4

    #@2a
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    #@2d
    .line 558
    return-void
.end method

.method public reportGeofenceRemoveStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 551
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "GeofenceHardwareImpl"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "RemoveCallback| id:"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, ", status:"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 552
    :cond_0
    const/4 v0, 0x3

    #@2a
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    #@2d
    .line 550
    return-void
.end method

.method public reportGeofenceResumeStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 567
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "GeofenceHardwareImpl"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "ResumeCallback| id:"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, ", status:"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 568
    :cond_0
    const/4 v0, 0x5

    #@2a
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    #@2d
    .line 566
    return-void
.end method

.method public reportGeofenceTransition(ILandroid/location/Location;IJII)V
    .locals 12
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J
    .param p6, "monitoringType"    # I
    .param p7, "sourcesUsed"    # I

    #@0
    .prologue
    .line 477
    if-nez p2, :cond_0

    #@2
    .line 478
    const-string/jumbo v3, "GeofenceHardwareImpl"

    #@5
    const-string/jumbo v4, "Invalid Geofence Transition: location=null"

    #@8
    const/4 v5, 0x0

    #@9
    new-array v5, v5, [Ljava/lang/Object;

    #@b
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 479
    return-void

    #@13
    .line 481
    :cond_0
    sget-boolean v3, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 483
    const-string/jumbo v3, "GeofenceHardwareImpl"

    #@1a
    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "GeofenceTransition| "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    const-string/jumbo v5, ", transition:"

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    .line 485
    const-string/jumbo v5, ", transitionTimestamp:"

    #@38
    .line 484
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    move-wide/from16 v0, p4

    #@3e
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 485
    const-string/jumbo v5, ", monitoringType:"

    #@45
    .line 484
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    move/from16 v0, p6

    #@4b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 486
    const-string/jumbo v5, ", sourcesUsed:"

    #@52
    .line 484
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    move/from16 v0, p7

    #@58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 482
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 489
    :cond_1
    new-instance v2, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    #@65
    move-object v3, p0

    #@66
    move v4, p1

    #@67
    move v5, p3

    #@68
    move-wide/from16 v6, p4

    #@6a
    move-object v8, p2

    #@6b
    move/from16 v9, p6

    #@6d
    move/from16 v10, p7

    #@6f
    invoke-direct/range {v2 .. v10}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;IIJLandroid/location/Location;II)V

    #@72
    .line 496
    .local v2, "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    #@75
    .line 498
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    #@77
    .line 499
    const/4 v4, 0x1

    #@78
    .line 498
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7b
    move-result-object v11

    #@7c
    .line 501
    .local v11, "message":Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    #@7f
    .line 476
    return-void
.end method

.method public resumeGeofence(III)Z
    .locals 6
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransition"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 410
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Resume Geofence: GeofenceId: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 412
    :cond_0
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@21
    monitor-enter v3

    #@22
    .line 413
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    if-nez v2, :cond_1

    #@2a
    .line 414
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "Geofence "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, " not registered."

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 412
    :catchall_0
    move-exception v2

    #@4c
    monitor-exit v3

    #@4d
    throw v2

    #@4e
    :cond_1
    monitor-exit v3

    #@4f
    .line 417
    packed-switch p2, :pswitch_data_0

    #@52
    .line 440
    const/4 v1, 0x0

    #@53
    .line 442
    :goto_0
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    #@55
    if-eqz v2, :cond_2

    #@57
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@5a
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "resumeGeofence: Result is: "

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 443
    :cond_2
    return v1

    #@72
    .line 419
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@74
    if-nez v2, :cond_3

    #@76
    return v5

    #@77
    .line 421
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@79
    invoke-interface {v2, p1, p3}, Landroid/location/IGpsGeofenceHardware;->resumeHardwareGeofence(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@7c
    move-result v1

    #@7d
    .local v1, "result":Z
    goto :goto_0

    #@7e
    .line 422
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    #@7f
    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@82
    const-string/jumbo v3, "ResumeGeofence: Remote Exception calling LocationManagerService"

    #@85
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 424
    const/4 v1, 0x0

    #@89
    .local v1, "result":Z
    goto :goto_0

    #@8a
    .line 428
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Z
    :pswitch_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@8c
    if-nez v2, :cond_4

    #@8e
    .line 429
    return v5

    #@8f
    .line 432
    :cond_4
    :try_start_2
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@91
    invoke-interface {v2, p1, p3}, Landroid/location/IFusedGeofenceHardware;->resumeMonitoringGeofence(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@94
    .line 433
    const/4 v1, 0x1

    #@95
    .restart local v1    # "result":Z
    goto :goto_0

    #@96
    .line 434
    .end local v1    # "result":Z
    :catch_1
    move-exception v0

    #@97
    .line 435
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GeofenceHardwareImpl"

    #@9a
    const-string/jumbo v3, "ResumeGeofence: RemoteException calling LocationManagerService"

    #@9d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    .line 436
    const/4 v1, 0x0

    #@a1
    .restart local v1    # "result":Z
    goto :goto_0

    #@a2
    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    .locals 2
    .param p1, "service"    # Landroid/location/IFusedGeofenceHardware;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 190
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 191
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@7
    .line 192
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    #@a
    .line 189
    :goto_0
    return-void

    #@b
    .line 193
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 194
    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    #@f
    .line 195
    const-string/jumbo v0, "GeofenceHardwareImpl"

    #@12
    const-string/jumbo v1, "Fused Geofence Hardware service seems to have crashed"

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    goto :goto_0

    #@19
    .line 197
    :cond_1
    const-string/jumbo v0, "GeofenceHardwareImpl"

    #@1c
    const-string/jumbo v1, "Error: FusedService being set again"

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    goto :goto_0
.end method

.method public setGpsHardwareGeofence(Landroid/location/IGpsGeofenceHardware;)V
    .locals 2
    .param p1, "service"    # Landroid/location/IGpsGeofenceHardware;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 168
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 169
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@7
    .line 170
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateGpsHardwareAvailability()V

    #@a
    .line 167
    :goto_0
    return-void

    #@b
    .line 171
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 172
    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    #@f
    .line 173
    const-string/jumbo v0, "GeofenceHardwareImpl"

    #@12
    const-string/jumbo v1, "GPS Geofence Hardware service seems to have crashed"

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    goto :goto_0

    #@19
    .line 175
    :cond_1
    const-string/jumbo v0, "GeofenceHardwareImpl"

    #@1c
    const-string/jumbo v1, "Error: GpsService being set again."

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    goto :goto_0
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    #@0
    .prologue
    .line 185
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    #@2
    .line 186
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    #@5
    .line 184
    return-void
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@0
    .prologue
    .line 461
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    #@2
    const/4 v2, 0x3

    #@3
    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 462
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@9
    .line 463
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@e
    .line 464
    const/4 v1, 0x1

    #@f
    return v1
.end method
