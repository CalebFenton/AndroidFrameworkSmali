.class public interface abstract Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
.super Ljava/lang/Object;
.source "IGeofenceHardwareMonitorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;,
        Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
