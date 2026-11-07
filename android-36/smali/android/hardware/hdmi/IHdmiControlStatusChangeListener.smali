.class public interface abstract Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
.super Ljava/lang/Object;
.source "IHdmiControlStatusChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;,
        Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiControlStatusChangeListener"


# virtual methods
.method public abstract blacklist onStatusChange(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
