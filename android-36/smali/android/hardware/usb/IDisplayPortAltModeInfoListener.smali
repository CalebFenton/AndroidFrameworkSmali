.class public interface abstract Landroid/hardware/usb/IDisplayPortAltModeInfoListener;
.super Ljava/lang/Object;
.source "IDisplayPortAltModeInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Stub;,
        Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IDisplayPortAltModeInfoListener"


# virtual methods
.method public abstract blacklist onDisplayPortAltModeInfoChanged(Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
