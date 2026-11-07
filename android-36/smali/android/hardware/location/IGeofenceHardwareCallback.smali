.class public interface abstract Landroid/hardware/location/IGeofenceHardwareCallback;
.super Ljava/lang/Object;
.source "IGeofenceHardwareCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardwareCallback$Stub;,
        Landroid/hardware/location/IGeofenceHardwareCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onGeofenceAdd(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onGeofencePause(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onGeofenceRemove(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onGeofenceResume(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onGeofenceTransition(IILandroid/location/Location;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
