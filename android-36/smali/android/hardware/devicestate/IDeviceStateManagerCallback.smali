.class public interface abstract Landroid/hardware/devicestate/IDeviceStateManagerCallback;
.super Ljava/lang/Object;
.source "IDeviceStateManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;,
        Landroid/hardware/devicestate/IDeviceStateManagerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.devicestate.IDeviceStateManagerCallback"


# virtual methods
.method public abstract blacklist onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRequestActive(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRequestCanceled(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
