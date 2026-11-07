.class public interface abstract Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
.super Ljava/lang/Object;
.source "IHdmiMhlVendorCommandListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Stub;,
        Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onReceived(III[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
