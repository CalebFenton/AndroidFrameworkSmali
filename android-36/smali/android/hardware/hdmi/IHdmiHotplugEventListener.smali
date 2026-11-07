.class public interface abstract Landroid/hardware/hdmi/IHdmiHotplugEventListener;
.super Ljava/lang/Object;
.source "IHdmiHotplugEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;,
        Landroid/hardware/hdmi/IHdmiHotplugEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
