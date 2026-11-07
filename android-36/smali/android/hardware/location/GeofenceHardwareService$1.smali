.class Landroid/hardware/location/GeofenceHardwareService$1;
.super Landroid/hardware/location/IGeofenceHardware$Stub;
.source "GeofenceHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/location/GeofenceHardwareService;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/GeofenceHardwareService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .registers 7
    .param p1, "monitoringType"    # I
    .param p2, "request"    # Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .param p3, "callback"    # Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 102
    invoke-super {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->addCircularFence_enforcePermission()V

    .line 104
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$mcheckPermission(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 105
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$fgetmGeofenceHardwareImpl(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    move-result v0

    return v0
.end method

.method public blacklist getMonitoringTypes()[I
    .registers 2

    .line 82
    invoke-super {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->getMonitoringTypes_enforcePermission()V

    .line 84
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$fgetmGeofenceHardwareImpl(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getMonitoringTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStatusOfMonitoringType(I)I
    .registers 3
    .param p1, "monitoringType"    # I

    .line 91
    invoke-super {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->getStatusOfMonitoringType_enforcePermission()V

    .line 93
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$fgetmGeofenceHardwareImpl(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->getStatusOfMonitoringType(I)I

    move-result v0

    return v0
.end method

.method public blacklist pauseGeofence(II)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I

    .line 122
    invoke-super {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->pauseGeofence_enforcePermission()V

    .line 124
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$mcheckPermission(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 125
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$fgetmGeofenceHardwareImpl(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->pauseGeofence(II)Z

    move-result v0

    return v0
.end method

.method public blacklist registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .registers 6
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 143
    invoke-super {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->registerForMonitorStateChangeCallback_enforcePermission()V

    .line 145
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$mcheckPermission(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 146
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$fgetmGeofenceHardwareImpl(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeGeofence(II)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I

    .line 112
    invoke-super {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->removeGeofence_enforcePermission()V

    .line 114
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$mcheckPermission(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 115
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$fgetmGeofenceHardwareImpl(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    move-result v0

    return v0
.end method

.method public blacklist resumeGeofence(III)Z
    .registers 7
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransitions"    # I

    .line 132
    invoke-super {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->resumeGeofence_enforcePermission()V

    .line 134
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$mcheckPermission(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 135
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$fgetmGeofenceHardwareImpl(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->resumeGeofence(III)Z

    move-result v0

    return v0
.end method

.method public blacklist setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    .registers 3
    .param p1, "service"    # Landroid/location/IFusedGeofenceHardware;

    .line 75
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$fgetmGeofenceHardwareImpl(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V

    .line 76
    return-void
.end method

.method public blacklist setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V
    .registers 3
    .param p1, "service"    # Landroid/location/IGpsGeofenceHardware;

    .line 70
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$fgetmGeofenceHardwareImpl(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->setGpsHardwareGeofence(Landroid/location/IGpsGeofenceHardware;)V

    .line 71
    return-void
.end method

.method public blacklist unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .registers 6
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 155
    invoke-super {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->unregisterForMonitorStateChangeCallback_enforcePermission()V

    .line 157
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$mcheckPermission(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 158
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-$$Nest$fgetmGeofenceHardwareImpl(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v0

    return v0
.end method
