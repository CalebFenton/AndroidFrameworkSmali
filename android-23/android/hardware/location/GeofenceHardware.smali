.class public final Landroid/hardware/location/GeofenceHardware;
.super Ljava/lang/Object;
.source "GeofenceHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;,
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    }
.end annotation


# static fields
.field public static final GEOFENCE_ENTERED:I = 0x1

.field public static final GEOFENCE_ERROR_ID_EXISTS:I = 0x2

.field public static final GEOFENCE_ERROR_ID_UNKNOWN:I = 0x3

.field public static final GEOFENCE_ERROR_INSUFFICIENT_MEMORY:I = 0x6

.field public static final GEOFENCE_ERROR_INVALID_TRANSITION:I = 0x4

.field public static final GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x1

.field public static final GEOFENCE_EXITED:I = 0x2

.field public static final GEOFENCE_FAILURE:I = 0x5

.field public static final GEOFENCE_SUCCESS:I = 0x0

.field public static final GEOFENCE_UNCERTAIN:I = 0x4

.field public static final MONITORING_TYPE_FUSED_HARDWARE:I = 0x1

.field public static final MONITORING_TYPE_GPS_HARDWARE:I = 0x0

.field public static final MONITOR_CURRENTLY_AVAILABLE:I = 0x0

.field public static final MONITOR_CURRENTLY_UNAVAILABLE:I = 0x1

.field public static final MONITOR_UNSUPPORTED:I = 0x2

.field static final NUM_MONITORS:I = 0x2

.field public static final SOURCE_TECHNOLOGY_BLUETOOTH:I = 0x10

.field public static final SOURCE_TECHNOLOGY_CELL:I = 0x8

.field public static final SOURCE_TECHNOLOGY_GNSS:I = 0x1

.field public static final SOURCE_TECHNOLOGY_SENSORS:I = 0x4

.field public static final SOURCE_TECHNOLOGY_WIFI:I = 0x2


# instance fields
.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/location/GeofenceHardwareCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/location/GeofenceHardwareMonitorCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/hardware/location/IGeofenceHardware;


# direct methods
.method static synthetic -wrap0(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/location/GeofenceHardware;->removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/hardware/location/IGeofenceHardware;)V
    .locals 1
    .param p1, "service"    # Landroid/hardware/location/IGeofenceHardware;

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 165
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    #@a
    .line 167
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    #@11
    .line 171
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    #@13
    .line 170
    return-void
.end method

.method private getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    .locals 3
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    #@0
    .prologue
    .line 446
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 447
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    #@b
    .line 448
    .local v0, "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    if-nez v0, :cond_0

    #@d
    .line 449
    new-instance v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    #@f
    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    invoke-direct {v0, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V

    #@12
    .line 450
    .restart local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    #@14
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 452
    return-object v0

    #@19
    .line 446
    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method private getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    .locals 3
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    #@0
    .prologue
    .line 464
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 465
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    #@b
    .line 466
    .local v0, "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    if-nez v0, :cond_0

    #@d
    .line 467
    new-instance v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    #@f
    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    invoke-direct {v0, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V

    #@12
    .line 468
    .restart local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    #@14
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 470
    return-object v0

    #@19
    .line 464
    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method private removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    #@0
    .prologue
    .line 440
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 441
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 439
    return-void

    #@a
    .line 440
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    #@0
    .prologue
    .line 457
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 458
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 456
    return-void

    #@a
    .line 457
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method


# virtual methods
.method public addGeofence(IILandroid/hardware/location/GeofenceHardwareRequest;Landroid/hardware/location/GeofenceHardwareCallback;)Z
    .locals 5
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "geofenceRequest"    # Landroid/hardware/location/GeofenceHardwareRequest;
    .param p4, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 270
    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 271
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    #@9
    .line 273
    new-instance v2, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    #@b
    invoke-direct {v2, p1, p3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;-><init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V

    #@e
    .line 274
    invoke-direct {p0, p4}, Landroid/hardware/location/GeofenceHardware;->getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    #@11
    move-result-object v3

    #@12
    .line 271
    invoke-interface {v1, p2, v2, v3}, Landroid/hardware/location/IGeofenceHardware;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 276
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v2, "Geofence Request type not supported"

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 278
    :catch_0
    move-exception v0

    #@21
    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public getMonitoringTypes()[I
    .locals 2

    #@0
    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    #@2
    invoke-interface {v1}, Landroid/hardware/location/IGeofenceHardware;->getMonitoringTypes()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 189
    :catch_0
    move-exception v0

    #@8
    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [I

    #@b
    return-object v1
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 2
    .param p1, "monitoringType"    # I

    #@0
    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/location/IGeofenceHardware;->getStatusOfMonitoringType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 212
    :catch_0
    move-exception v0

    #@8
    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    #@9
    return v1
.end method

.method public pauseGeofence(II)Z
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    #@0
    .prologue
    .line 337
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->pauseGeofence(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 338
    :catch_0
    move-exception v0

    #@8
    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    #@0
    .prologue
    .line 400
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    #@2
    .line 401
    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    #@5
    move-result-object v2

    #@6
    .line 400
    invoke-interface {v1, p1, v2}, Landroid/hardware/location/IGeofenceHardware;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 402
    :catch_0
    move-exception v0

    #@c
    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public removeGeofence(II)Z
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    #@0
    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->removeGeofence(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 308
    :catch_0
    move-exception v0

    #@8
    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public resumeGeofence(III)Z
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransition"    # I

    #@0
    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/location/IGeofenceHardware;->resumeGeofence(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 370
    :catch_0
    move-exception v0

    #@8
    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .locals 4
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    #@0
    .prologue
    .line 427
    const/4 v1, 0x0

    #@1
    .line 429
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    #@3
    .line 430
    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    #@6
    move-result-object v3

    #@7
    .line 429
    invoke-interface {v2, p1, v3}, Landroid/hardware/location/IGeofenceHardware;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    #@a
    move-result v1

    #@b
    .line 431
    .local v1, "result":Z
    if-eqz v1, :cond_0

    #@d
    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 435
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    #@11
    .line 433
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
