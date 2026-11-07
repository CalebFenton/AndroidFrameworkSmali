.class public interface abstract Landroid/net/wifi/hotspot2/IProvisioningCallback;
.super Ljava/lang/Object;
.source "IProvisioningCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;,
        Landroid/net/wifi/hotspot2/IProvisioningCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onProvisioningComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onProvisioningFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onProvisioningStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
