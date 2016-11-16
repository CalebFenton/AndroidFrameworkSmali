.class Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
.super Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;
.source "GeofenceHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeofenceHardwareMonitorCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/hardware/location/GeofenceHardwareMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/location/GeofenceHardware;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardware;
    .param p2, "c"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    #@0
    .prologue
    .line 477
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->this$0:Landroid/hardware/location/GeofenceHardware;

    #@2
    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;-><init>()V

    #@5
    .line 478
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@7
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@a
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    #@c
    .line 477
    return-void
.end method


# virtual methods
.method public onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 482
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    #@3
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    #@9
    .line 483
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareMonitorCallback;
    if-nez v0, :cond_0

    #@b
    return-void

    #@c
    .line 487
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getMonitoringType()I

    #@f
    move-result v2

    #@10
    .line 488
    invoke-virtual {p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getMonitoringStatus()I

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_1

    #@16
    const/4 v1, 0x1

    #@17
    .line 489
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getLocation()Landroid/location/Location;

    #@1a
    move-result-object v3

    #@1b
    .line 486
    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/location/GeofenceHardwareMonitorCallback;->onMonitoringSystemChange(IZLandroid/location/Location;)V

    #@1e
    .line 493
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@20
    const/16 v2, 0x15

    #@22
    if-lt v1, v2, :cond_2

    #@24
    .line 494
    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareMonitorCallback;->onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V

    #@27
    .line 481
    :cond_2
    return-void
.end method
