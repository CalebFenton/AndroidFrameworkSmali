.class public Lcom/android/server/location/FlpHardwareProvider;
.super Ljava/lang/Object;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;,
        Lcom/android/server/location/FlpHardwareProvider$1;,
        Lcom/android/server/location/FlpHardwareProvider$2;
    }
.end annotation


# static fields
.field private static final FIRST_VERSION_WITH_FLUSH_LOCATIONS:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_AVAILABLE:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_UNAVAILABLE:I = 0x1

.field private static final FLP_RESULT_ERROR:I = -0x1

.field private static final FLP_RESULT_ID_EXISTS:I = -0x4

.field private static final FLP_RESULT_ID_UNKNOWN:I = -0x5

.field private static final FLP_RESULT_INSUFFICIENT_MEMORY:I = -0x2

.field private static final FLP_RESULT_INVALID_GEOFENCE_TRANSITION:I = -0x6

.field private static final FLP_RESULT_SUCCESS:I = 0x0

.field private static final FLP_RESULT_TOO_MANY_GEOFENCES:I = -0x3

.field public static final GEOFENCING:Ljava/lang/String; = "Geofencing"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final TAG:Ljava/lang/String; = "FlpHardwareProvider"

.field private static sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;


# instance fields
.field private mBatchingCapabilities:I

.field private final mContext:Landroid/content/Context;

.field private final mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mHaveBatchingCapabilities:Z

.field private final mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field private mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

.field private final mLocationSinkLock:Ljava/lang/Object;

.field private mVersion:I


# direct methods
.method static synthetic -get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDeviceContextSupported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDiagnosticSupported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/location/FlpHardwareProvider;Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectLocation(Landroid/location/Location;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "lastTransition"    # I
    .param p3, "monitorTransitions"    # I
    .param p4, "notificationResponsiveness"    # I
    .param p5, "unknownTimer"    # I
    .param p6, "sourcesToUse"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/FlpHardwareProvider;->nativeModifyGeofenceOption(IIIIII)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "geofenceId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativePauseGeofence(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/location/FlpHardwareProvider;[I)V
    .locals 0
    .param p1, "geofenceIdsArray"    # [I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRemoveGeofences([I)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "lastNLocations"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRequestBatchedLocation(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/location/FlpHardwareProvider;II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeResumeGeofence(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "optionsObject"    # Landroid/location/FusedBatchOptions;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsGeofencingSupported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeGetBatchSize()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .locals 0
    .param p1, "geofenceRequestsArray"    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeFlushBatchedLocations()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "deviceEnabledContext"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDeviceContext(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDiagnosticData(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    #@3
    .line 289
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeClassInit()V

    #@6
    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 46
    iput-object v11, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    #@7
    .line 47
    iput-object v11, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    #@9
    .line 51
    iput v12, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    #@b
    .line 57
    new-instance v6, Ljava/lang/Object;

    #@d
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    #@12
    .line 344
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$1;

    #@14
    invoke-direct {v6, p0}, Lcom/android/server/location/FlpHardwareProvider$1;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    #@17
    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@19
    .line 430
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$2;

    #@1b
    invoke-direct {v6, p0}, Lcom/android/server/location/FlpHardwareProvider$2;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    #@1e
    .line 429
    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    #@20
    .line 82
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    #@22
    .line 85
    iget-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    #@24
    .line 86
    const-string/jumbo v7, "location"

    #@27
    .line 85
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/location/LocationManager;

    #@2d
    .line 87
    .local v0, "manager":Landroid/location/LocationManager;
    const-wide/16 v2, 0x0

    #@2f
    .line 88
    .local v2, "minTime":J
    const/4 v1, 0x0

    #@30
    .line 89
    .local v1, "minDistance":F
    const/4 v4, 0x0

    #@31
    .line 91
    .local v4, "oneShot":Z
    const-string/jumbo v6, "passive"

    #@34
    .line 92
    const-wide/16 v8, 0x0

    #@36
    .line 93
    const/4 v7, 0x0

    #@37
    .line 94
    const/4 v10, 0x0

    #@38
    .line 90
    invoke-static {v6, v8, v9, v7, v10}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    #@3b
    move-result-object v5

    #@3c
    .line 97
    .local v5, "request":Landroid/location/LocationRequest;
    invoke-virtual {v5, v12}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    #@3f
    .line 100
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;

    #@41
    invoke-direct {v6, p0, v11}, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;)V

    #@44
    .line 101
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@47
    move-result-object v7

    #@48
    .line 98
    invoke-virtual {v0, v5, v6, v7}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    #@4b
    .line 81
    return-void
.end method

.method private getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 2

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 501
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    #@c
    .line 502
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    #@e
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    #@15
    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    #@17
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 73
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 74
    new-instance v0, Lcom/android/server/location/FlpHardwareProvider;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/location/FlpHardwareProvider;-><init>(Landroid/content/Context;)V

    #@9
    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    #@b
    .line 75
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    #@d
    invoke-direct {v0}, Lcom/android/server/location/FlpHardwareProvider;->nativeInit()V

    #@10
    .line 78
    :cond_0
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    #@12
    return-object v0
.end method

.method private getVersion()I
    .locals 2

    #@0
    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 165
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 166
    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :cond_0
    monitor-exit v1

    #@c
    .line 169
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 164
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static isSupported()Z
    .locals 1

    #@0
    .prologue
    .line 105
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsSupported()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private maybeSendCapabilities()V
    .locals 6

    #@0
    .prologue
    .line 183
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    #@5
    .line 185
    .local v3, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    iget-boolean v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    #@7
    .line 186
    .local v2, "haveBatchingCapabilities":Z
    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "batchingCapabilities":I
    monitor-exit v5

    #@a
    .line 189
    if-eqz v3, :cond_0

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 190
    :try_start_1
    invoke-interface {v3, v0}, Landroid/hardware/location/IFusedLocationHardwareSink;->onCapabilities(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@11
    .line 179
    :cond_0
    :goto_0
    return-void

    #@12
    .line 183
    .end local v0    # "batchingCapabilities":I
    .end local v2    # "haveBatchingCapabilities":Z
    .end local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v4

    #@13
    monitor-exit v5

    #@14
    throw v4

    #@15
    .line 192
    .restart local v0    # "batchingCapabilities":I
    .restart local v2    # "haveBatchingCapabilities":Z
    .restart local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v1

    #@16
    .line 193
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FlpHardwareProvider"

    #@19
    const-string/jumbo v5, "RemoteException calling onLocationAvailable"

    #@1c
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    goto :goto_0
.end method

.method private native nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCleanup()V
.end method

.method private native nativeFlushBatchedLocations()V
.end method

.method private native nativeGetBatchSize()I
.end method

.method private native nativeInit()V
.end method

.method private native nativeInjectDeviceContext(I)V
.end method

.method private native nativeInjectDiagnosticData(Ljava/lang/String;)V
.end method

.method private native nativeInjectLocation(Landroid/location/Location;)V
.end method

.method private native nativeIsDeviceContextSupported()Z
.end method

.method private native nativeIsDiagnosticSupported()Z
.end method

.method private native nativeIsGeofencingSupported()Z
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeModifyGeofenceOption(IIIIII)V
.end method

.method private native nativePauseGeofence(I)V
.end method

.method private native nativeRemoveGeofences([I)V
.end method

.method private native nativeRequestBatchedLocation(I)V
.end method

.method private native nativeResumeGeofence(II)V
.end method

.method private native nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
.end method

.method private native nativeStopBatching(I)V
.end method

.method private native nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
.end method

.method private onBatchingCapabilities(I)V
    .locals 2
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 134
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    #@6
    .line 135
    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 138
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    #@c
    .line 140
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 141
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    #@12
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    #@15
    move-result v1

    #@16
    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    #@19
    .line 132
    :cond_0
    return-void

    #@1a
    .line 133
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private onBatchingStatus(I)V
    .locals 4
    .param p1, "status"    # I

    #@0
    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v2

    #@6
    .line 151
    if-eqz v1, :cond_0

    #@8
    .line 152
    :try_start_1
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@b
    .line 145
    :cond_0
    :goto_0
    return-void

    #@c
    .line 147
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v3

    #@d
    monitor-exit v2

    #@e
    throw v3

    #@f
    .line 154
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    #@10
    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FlpHardwareProvider"

    #@13
    const-string/jumbo v3, "RemoteException calling onBatchingStatus"

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    goto :goto_0
.end method

.method private onDataReport(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v2

    #@6
    .line 204
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 205
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onDiagnosticDataAvailable(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@d
    .line 198
    :cond_0
    :goto_0
    return-void

    #@e
    .line 200
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v3

    #@f
    monitor-exit v2

    #@10
    throw v3

    #@11
    .line 207
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    #@12
    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FlpHardwareProvider"

    #@15
    const-string/jumbo v3, "RemoteException calling onDiagnosticDataAvailable"

    #@18
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    goto :goto_0
.end method

.method private onGeofenceAdd(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    #@3
    move-result-object v0

    #@4
    .line 261
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    #@7
    move-result v1

    #@8
    .line 259
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    #@b
    .line 258
    return-void
.end method

.method private onGeofenceMonitorStatus(IILandroid/location/Location;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "source"    # I
    .param p3, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 232
    const/4 v1, 0x0

    #@1
    .line 233
    .local v1, "updatedLocation":Landroid/location/Location;
    if-eqz p3, :cond_0

    #@3
    .line 234
    invoke-direct {p0, p3}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    #@6
    move-result-object v1

    #@7
    .line 238
    .end local v1    # "updatedLocation":Landroid/location/Location;
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@a
    .line 246
    const-string/jumbo v2, "FlpHardwareProvider"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Invalid FlpHal Geofence monitor status: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 247
    const/4 v0, 0x1

    #@25
    .line 251
    .local v0, "monitorStatus":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    #@28
    move-result-object v2

    #@29
    .line 252
    const/4 v3, 0x1

    #@2a
    .line 251
    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    #@2d
    .line 230
    return-void

    #@2e
    .line 240
    .end local v0    # "monitorStatus":I
    :pswitch_0
    const/4 v0, 0x1

    #@2f
    .line 241
    .restart local v0    # "monitorStatus":I
    goto :goto_0

    #@30
    .line 243
    .end local v0    # "monitorStatus":I
    :pswitch_1
    const/4 v0, 0x0

    #@31
    .line 244
    .restart local v0    # "monitorStatus":I
    goto :goto_0

    #@32
    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onGeofencePause(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    #@3
    move-result-object v0

    #@4
    .line 273
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    #@7
    move-result v1

    #@8
    .line 271
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    #@b
    .line 270
    return-void
.end method

.method private onGeofenceRemove(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    #@3
    move-result-object v0

    #@4
    .line 267
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    #@7
    move-result v1

    #@8
    .line 265
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    #@b
    .line 264
    return-void
.end method

.method private onGeofenceResume(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    #@3
    move-result-object v0

    #@4
    .line 279
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    #@7
    move-result v1

    #@8
    .line 277
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    #@b
    .line 276
    return-void
.end method

.method private onGeofenceTransition(ILandroid/location/Location;IJI)V
    .locals 8
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "timestamp"    # J
    .param p6, "sourcesUsed"    # I

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    #@3
    move-result-object v0

    #@4
    .line 223
    invoke-direct {p0, p2}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    #@7
    move-result-object v2

    #@8
    .line 226
    const/4 v6, 0x1

    #@9
    move v1, p1

    #@a
    move v3, p3

    #@b
    move-wide v4, p4

    #@c
    move v7, p6

    #@d
    .line 221
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    #@10
    .line 218
    return-void
.end method

.method private onGeofencingCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->onCapabilities(I)V

    #@7
    .line 282
    return-void
.end method

.method private onLocationReport([Landroid/location/Location;)V
    .locals 8
    .param p1, "locations"    # [Landroid/location/Location;

    #@0
    .prologue
    .line 113
    const/4 v3, 0x0

    #@1
    array-length v4, p1

    #@2
    :goto_0
    if-ge v3, v4, :cond_0

    #@4
    aget-object v1, p1, v3

    #@6
    .line 114
    .local v1, "location":Landroid/location/Location;
    const-string/jumbo v5, "fused"

    #@9
    invoke-virtual {v1, v5}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    #@c
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@f
    move-result-wide v6

    #@10
    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    #@13
    .line 113
    add-int/lit8 v3, v3, 0x1

    #@15
    goto :goto_0

    #@16
    .line 120
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    #@18
    monitor-enter v3

    #@19
    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .local v2, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v3

    #@1c
    .line 124
    if-eqz v2, :cond_1

    #@1e
    .line 125
    :try_start_1
    invoke-interface {v2, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@21
    .line 112
    :cond_1
    :goto_1
    return-void

    #@22
    .line 120
    .end local v2    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v4

    #@23
    monitor-exit v3

    #@24
    throw v4

    #@25
    .line 127
    .restart local v2    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    #@26
    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FlpHardwareProvider"

    #@29
    const-string/jumbo v4, "RemoteException calling onLocationAvailable"

    #@2c
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    goto :goto_1
.end method

.method private setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    #@0
    .prologue
    .line 173
    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    #@2
    .line 174
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 175
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    #@8
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    #@f
    .line 172
    :cond_0
    return-void
.end method

.method private static translateToGeofenceHardwareStatus(I)I
    .locals 6
    .param p0, "flpHalResult"    # I

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 509
    packed-switch p0, :pswitch_data_0

    #@6
    .line 525
    const-string/jumbo v0, "FlpHardwareProvider"

    #@9
    const-string/jumbo v1, "Invalid FlpHal result code: %d"

    #@c
    new-array v2, v2, [Ljava/lang/Object;

    #@e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    aput-object v3, v2, v4

    #@14
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 526
    return v5

    #@1c
    .line 511
    :pswitch_0
    return v4

    #@1d
    .line 513
    :pswitch_1
    return v5

    #@1e
    .line 515
    :pswitch_2
    const/4 v0, 0x6

    #@1f
    return v0

    #@20
    .line 517
    :pswitch_3
    return v2

    #@21
    .line 519
    :pswitch_4
    const/4 v0, 0x2

    #@22
    return v0

    #@23
    .line 521
    :pswitch_5
    const/4 v0, 0x3

    #@24
    return v0

    #@25
    .line 523
    :pswitch_6
    const/4 v0, 0x4

    #@26
    return v0

    #@27
    .line 509
    nop

    #@28
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 531
    const-string/jumbo v0, "fused"

    #@3
    invoke-virtual {p1, v0}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    #@6
    .line 533
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@9
    move-result-wide v0

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    #@d
    .line 534
    return-object p1
.end method


# virtual methods
.method public getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;
    .locals 1

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    #@2
    return-object v0
.end method

.method public getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;
    .locals 1

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    #@2
    return-object v0
.end method
