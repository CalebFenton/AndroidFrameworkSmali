.class public interface abstract Landroid/hardware/hdmi/IHdmiVendorCommandListener;
.super Ljava/lang/Object;
.source "IHdmiVendorCommandListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;,
        Landroid/hardware/hdmi/IHdmiVendorCommandListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onControlStateChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onReceived(II[BZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
