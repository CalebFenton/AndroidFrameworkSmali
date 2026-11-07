.class public interface abstract Landroid/hardware/input/IInputDeviceBatteryListener;
.super Ljava/lang/Object;
.source "IInputDeviceBatteryListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputDeviceBatteryListener$Stub;,
        Landroid/hardware/input/IInputDeviceBatteryListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputDeviceBatteryListener"


# virtual methods
.method public abstract blacklist onBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
