.class public interface abstract Landroid/location/IGpsGeofenceHardware;
.super Ljava/lang/Object;
.source "IGpsGeofenceHardware.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsGeofenceHardware$Stub;,
        Landroid/location/IGpsGeofenceHardware$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o addCircularHardwareGeofence(IDDDIIII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o isHardwareGeofenceSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o pauseHardwareGeofence(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o removeHardwareGeofence(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o resumeHardwareGeofence(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
