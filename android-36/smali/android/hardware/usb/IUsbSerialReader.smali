.class public interface abstract Landroid/hardware/usb/IUsbSerialReader;
.super Ljava/lang/Object;
.source "IUsbSerialReader.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbSerialReader$Stub;,
        Landroid/hardware/usb/IUsbSerialReader$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbSerialReader"


# virtual methods
.method public abstract blacklist getSerial(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
