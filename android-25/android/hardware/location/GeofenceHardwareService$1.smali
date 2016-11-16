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
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareService;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareService;

    #@0
    .prologue
    .line 67
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@2
    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "request"    # Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .param p3, "callback"    # Landroid/hardware/location/IGeofenceHardwareCallback;

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@2
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get0(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@9
    .line 100
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware geofence"

    #@c
    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 101
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v1

    #@15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v2

    #@19
    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->-wrap0(Landroid/hardware/location/GeofenceHardwareService;III)V

    #@1c
    .line 102
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@1e
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get1(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public getMonitoringTypes()[I
    .locals 3

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@2
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get0(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@9
    .line 81
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware geofence"

    #@c
    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 83
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@11
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get1(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getMonitoringTypes()[I

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 3
    .param p1, "monitoringType"    # I

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@2
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get0(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@9
    .line 89
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware geofence"

    #@c
    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 91
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@11
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get1(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->getStatusOfMonitoringType(I)I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public pauseGeofence(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@2
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get0(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@9
    .line 117
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware geofence"

    #@c
    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 119
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v1

    #@15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v2

    #@19
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->-wrap0(Landroid/hardware/location/GeofenceHardwareService;III)V

    #@1c
    .line 120
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@1e
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get1(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->pauseGeofence(II)Z

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@2
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get0(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@9
    .line 136
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware geofence"

    #@c
    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 138
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v1

    #@15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v2

    #@19
    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->-wrap0(Landroid/hardware/location/GeofenceHardwareService;III)V

    #@1c
    .line 139
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@1e
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get1(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public removeGeofence(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@2
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get0(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@9
    .line 108
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware geofence"

    #@c
    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 110
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v1

    #@15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v2

    #@19
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->-wrap0(Landroid/hardware/location/GeofenceHardwareService;III)V

    #@1c
    .line 111
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@1e
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get1(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public resumeGeofence(III)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransitions"    # I

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@2
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get0(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@9
    .line 126
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware geofence"

    #@c
    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 128
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v1

    #@15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v2

    #@19
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->-wrap0(Landroid/hardware/location/GeofenceHardwareService;III)V

    #@1c
    .line 129
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@1e
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get1(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->resumeGeofence(III)Z

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    .locals 1
    .param p1, "service"    # Landroid/location/IFusedGeofenceHardware;

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@2
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get1(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V

    #@9
    .line 74
    return-void
.end method

.method public setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V
    .locals 1
    .param p1, "service"    # Landroid/location/IGpsGeofenceHardware;

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@2
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get1(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->setGpsHardwareGeofence(Landroid/location/IGpsGeofenceHardware;)V

    #@9
    .line 69
    return-void
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@2
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get0(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@9
    .line 147
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware geofence"

    #@c
    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 149
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v1

    #@15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v2

    #@19
    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->-wrap0(Landroid/hardware/location/GeofenceHardwareService;III)V

    #@1c
    .line 150
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    #@1e
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->-get1(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    #@25
    move-result v0

    #@26
    return v0
.end method
