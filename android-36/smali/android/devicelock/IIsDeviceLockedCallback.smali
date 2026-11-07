.class public interface abstract Landroid/devicelock/IIsDeviceLockedCallback;
.super Ljava/lang/Object;
.source "IIsDeviceLockedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/devicelock/IIsDeviceLockedCallback$Stub;,
        Landroid/devicelock/IIsDeviceLockedCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.devicelock.IIsDeviceLockedCallback"


# virtual methods
.method public abstract blacklist onError(Landroid/devicelock/ParcelableException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onIsDeviceLocked(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
