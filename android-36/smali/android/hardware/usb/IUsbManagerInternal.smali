.class public interface abstract Landroid/hardware/usb/IUsbManagerInternal;
.super Ljava/lang/Object;
.source "IUsbManagerInternal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManagerInternal$Stub;,
        Landroid/hardware/usb/IUsbManagerInternal$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManagerInternal"


# virtual methods
.method public abstract blacklist enableUsbDataSignal(ZI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
