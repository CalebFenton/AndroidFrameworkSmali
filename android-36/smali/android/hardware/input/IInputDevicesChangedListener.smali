.class public interface abstract Landroid/hardware/input/IInputDevicesChangedListener;
.super Ljava/lang/Object;
.source "IInputDevicesChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputDevicesChangedListener$Stub;,
        Landroid/hardware/input/IInputDevicesChangedListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onInputDevicesChanged([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
