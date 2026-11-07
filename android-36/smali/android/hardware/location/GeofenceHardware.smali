.class public final Landroid/hardware/location/GeofenceHardware;
.super Ljava/lang/Object;
.source "GeofenceHardware.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;,
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    }
.end annotation


# static fields
.field public static final whitelist GEOFENCE_ENTERED:I = 0x1

.field public static final whitelist GEOFENCE_ERROR_ID_EXISTS:I = 0x2

.field public static final whitelist GEOFENCE_ERROR_ID_UNKNOWN:I = 0x3

.field public static final whitelist GEOFENCE_ERROR_INSUFFICIENT_MEMORY:I = 0x6

.field public static final whitelist GEOFENCE_ERROR_INVALID_TRANSITION:I = 0x4

.field public static final whitelist GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x1

.field public static final whitelist GEOFENCE_EXITED:I = 0x2

.field public static final whitelist GEOFENCE_FAILURE:I = 0x5

.field public static final whitelist GEOFENCE_SUCCESS:I = 0x0

.field public static final whitelist GEOFENCE_UNCERTAIN:I = 0x4

.field public static final whitelist MONITORING_TYPE_FUSED_HARDWARE:I = 0x1

.field public static final whitelist MONITORING_TYPE_GPS_HARDWARE:I = 0x0

.field public static final whitelist MONITOR_CURRENTLY_AVAILABLE:I = 0x0

.field public static final whitelist MONITOR_CURRENTLY_UNAVAILABLE:I = 0x1

.field public static final whitelist MONITOR_UNSUPPORTED:I = 0x2

.field static final greylist-max-o NUM_MONITORS:I = 0x2

.field public static final whitelist SOURCE_TECHNOLOGY_BLUETOOTH:I = 0x10

.field public static final whitelist SOURCE_TECHNOLOGY_CELL:I = 0x8

.field public static final whitelist SOURCE_TECHNOLOGY_GNSS:I = 0x1

.field public static final whitelist SOURCE_TECHNOLOGY_SENSORS:I = 0x4

.field public static final whitelist SOURCE_TECHNOLOGY_WIFI:I = 0x2


# instance fields
.field private greylist-max-o mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/location/GeofenceHardwareCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMonitorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/location/GeofenceHardwareMonitorCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mService:Landroid/hardware/location/IGeofenceHardware;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mremoveCallback(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/location/GeofenceHardware;->removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/hardware/location/IGeofenceHardware;)V
    .registers 3
    .param p1, "service"    # Landroid/hardware/location/IGeofenceHardware;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    .line 174
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 175
    return-void
.end method

.method private greylist-max-o getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    .registers 5
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .line 449
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 450
    :try_start_3
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    .line 451
    .local v1, "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    if-nez v1, :cond_18

    .line 452
    new-instance v2, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    invoke-direct {v2, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V

    move-object v1, v2

    .line 453
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_18
    monitor-exit v0

    return-object v1

    .line 456
    .end local v1    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private greylist-max-o getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    .registers 5
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .line 467
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 468
    :try_start_3
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    .line 469
    .local v1, "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    if-nez v1, :cond_18

    .line 470
    new-instance v2, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    invoke-direct {v2, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V

    move-object v1, v2

    .line 471
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_18
    monitor-exit v0

    return-object v1

    .line 474
    .end local v1    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private greylist-max-o removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .line 443
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 444
    :try_start_3
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private greylist-max-o removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .line 460
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 461
    :try_start_3
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    monitor-exit v0

    .line 463
    return-void

    .line 462
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public whitelist addGeofence(IILandroid/hardware/location/GeofenceHardwareRequest;Landroid/hardware/location/GeofenceHardwareCallback;)Z
    .registers 8
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "geofenceRequest"    # Landroid/hardware/location/GeofenceHardwareRequest;
    .param p4, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .line 273
    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result v0

    if-nez v0, :cond_16

    .line 274
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    new-instance v1, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    invoke-direct {v1, p1, p3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;-><init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V

    .line 277
    invoke-direct {p0, p4}, Landroid/hardware/location/GeofenceHardware;->getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    move-result-object v2

    .line 274
    invoke-interface {v0, p2, v1, v2}, Landroid/hardware/location/IGeofenceHardware;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    move-result v0

    return v0

    .line 279
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geofence Request type not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/location/GeofenceHardware;
    .end local p1    # "geofenceId":I
    .end local p2    # "monitoringType":I
    .end local p3    # "geofenceRequest":Landroid/hardware/location/GeofenceHardwareRequest;
    .end local p4    # "callback":Landroid/hardware/location/GeofenceHardwareCallback;
    throw v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1e

    .line 281
    .restart local p0    # "this":Landroid/hardware/location/GeofenceHardware;
    .restart local p1    # "geofenceId":I
    .restart local p2    # "monitoringType":I
    .restart local p3    # "geofenceRequest":Landroid/hardware/location/GeofenceHardwareRequest;
    .restart local p4    # "callback":Landroid/hardware/location/GeofenceHardwareCallback;
    :catch_1e
    move-exception v0

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMonitoringTypes()[I
    .registers 2

    .line 191
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardware;->getMonitoringTypes()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 192
    :catch_7
    move-exception v0

    .line 194
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getStatusOfMonitoringType(I)I
    .registers 4
    .param p1, "monitoringType"    # I

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IGeofenceHardware;->getStatusOfMonitoringType(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 215
    :catch_7
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public whitelist pauseGeofence(II)Z
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .line 340
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->pauseGeofence(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 341
    :catch_7
    move-exception v0

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .registers 5
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .line 403
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 404
    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    move-result-object v1

    .line 403
    invoke-interface {v0, p1, v1}, Landroid/hardware/location/IGeofenceHardware;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 405
    :catch_b
    move-exception v0

    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeGeofence(II)Z
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .line 310
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->removeGeofence(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 311
    :catch_7
    move-exception v0

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist resumeGeofence(III)Z
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransition"    # I

    .line 372
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/IGeofenceHardware;->resumeGeofence(III)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 373
    :catch_7
    move-exception v0

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .registers 6
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 433
    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    move-result-object v2

    .line 432
    invoke-interface {v1, p1, v2}, Landroid/hardware/location/IGeofenceHardware;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v1

    move v0, v1

    .line 434
    if-eqz v0, :cond_11

    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_12

    .line 437
    :cond_11
    goto :goto_13

    .line 436
    :catch_12
    move-exception v1

    .line 438
    :goto_13
    return v0
.end method
