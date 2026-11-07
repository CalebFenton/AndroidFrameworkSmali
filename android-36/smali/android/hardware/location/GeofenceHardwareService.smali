.class public Landroid/hardware/location/GeofenceHardwareService;
.super Landroid/app/Service;
.source "GeofenceHardwareService.java"


# instance fields
.field private greylist-max-o mBinder:Landroid/os/IBinder;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGeofenceHardwareImpl(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckPermission(Landroid/hardware/location/GeofenceHardwareService;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Landroid/hardware/location/GeofenceHardwareService$1;

    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareService$1;-><init>(Landroid/hardware/location/GeofenceHardwareService;)V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private greylist-max-o checkPermission(III)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "monitoringType"    # I

    .line 60
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->getAllowedResolutionLevel(II)I

    move-result v0

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 61
    invoke-virtual {v1, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->getMonitoringResolutionLevel(I)I

    move-result v1

    if-lt v0, v1, :cond_f

    .line 65
    return-void

    .line 62
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient permissions to access hardware geofence for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 45
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 2

    .line 39
    iput-object p0, p0, Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 41
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 56
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 50
    const/4 v0, 0x0

    return v0
.end method
