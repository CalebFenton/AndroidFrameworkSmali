.class public interface abstract Landroid/hardware/usb/IUsbOperationInternal;
.super Ljava/lang/Object;
.source "IUsbOperationInternal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbOperationInternal$Stub;,
        Landroid/hardware/usb/IUsbOperationInternal$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbOperationInternal"


# virtual methods
.method public abstract blacklist onOperationComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
