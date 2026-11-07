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
.field private greylist-max-o mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/location/GeofenceHardwareMonitorCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardware;
    .param p2, "c"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 480
    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;-><init>()V

    .line 481
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 482
    return-void
.end method


# virtual methods
.method public greylist-max-o onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    .line 485
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .line 486
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareMonitorCallback;
    if-nez v0, :cond_b

    return-void

    .line 489
    :cond_b
    nop

    .line 490
    invoke-virtual {p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getMonitoringType()I

    move-result v1

    .line 491
    invoke-virtual {p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getMonitoringStatus()I

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 492
    :goto_19
    invoke-virtual {p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 489
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/location/GeofenceHardwareMonitorCallback;->onMonitoringSystemChange(IZLandroid/location/Location;)V

    .line 496
    nop

    .line 497
    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareMonitorCallback;->onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V

    .line 499
    return-void
.end method
